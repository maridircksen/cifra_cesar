program CifraCesarComMenu;

function DescriptografarCifraCesar(TextoCriptografado: string; Deslocamento: Integer): string;
var
  i: Integer;
  CaractereAtual: Char;
  PosicaoOriginal, NovaPosicao: Integer;
  TextoDescriptografado: string;
begin
  TextoDescriptografado := '';
  
  for i := 1 to Length(TextoCriptografado) do
  begin
    CaractereAtual := TextoCriptografado[i];

    // Verifica se o caractere é uma letra maiúscula
    if (CaractereAtual >= 'A') and (CaractereAtual <= 'Z') then
    begin
      PosicaoOriginal := Ord(CaractereAtual) - Ord('A');
      NovaPosicao := (PosicaoOriginal - Deslocamento + 26) mod 26;
      TextoDescriptografado := TextoDescriptografado + Chr(NovaPosicao + Ord('A'));
    end
    // Verifica se o caractere é uma letra minúscula
    else if (CaractereAtual >= 'a') and (CaractereAtual <= 'z') then
    begin
      PosicaoOriginal := Ord(CaractereAtual) - Ord('a');
      NovaPosicao := (PosicaoOriginal - Deslocamento + 26) mod 26;
      TextoDescriptografado := TextoDescriptografado + Chr(NovaPosicao + Ord('a'));
    end
    // Mantém o caractere inalterado se não for uma letra
    else
    begin
      TextoDescriptografado := TextoDescriptografado + CaractereAtual;
    end;
  end;

  DescriptografarCifraCesar := TextoDescriptografado;
end;

function CriptografarCifraCesar(TextoOriginal: string; Deslocamento: Integer): string;
var
  i: Integer;
  CaractereAtual: Char;
  PosicaoOriginal, NovaPosicao: Integer;
  TextoCriptografado: string;
begin
  TextoCriptografado := '';
  
  for i := 1 to Length(TextoOriginal) do
  begin
    CaractereAtual := TextoOriginal[i];

    // Verifica se o caractere é uma letra maiúscula
    if (CaractereAtual >= 'A') and (CaractereAtual <= 'Z') then
    begin
      PosicaoOriginal := Ord(CaractereAtual) - Ord('A');
      NovaPosicao := (PosicaoOriginal + Deslocamento) mod 26;
      TextoCriptografado := TextoCriptografado + Chr(NovaPosicao + Ord('A'));
    end
    // Verifica se o caractere é uma letra minúscula
    else if (CaractereAtual >= 'a') and (CaractereAtual <= 'z') then
    begin
      PosicaoOriginal := Ord(CaractereAtual) - Ord('a');
      NovaPosicao := (PosicaoOriginal + Deslocamento) mod 26;
      TextoCriptografado := TextoCriptografado + Chr(NovaPosicao + Ord('a'));
    end
    // Mantém o caractere inalterado se não for uma letra
    else
    begin
      TextoCriptografado := TextoCriptografado + CaractereAtual;
    end;
  end;

  CriptografarCifraCesar := TextoCriptografado;
end;

procedure MenuTela();
var
  Opcao: Integer;
  Texto: string;
  Deslocamento: Integer;
  TextoProcessado: string;
begin
  repeat
    clrscr;
		writeln('-----------------------------------------');
		writeln('Cifra de César');
		writeln('-----------------------------------------');
    writeln('1. Criptografar texto');
    writeln('2. Descriptografar texto');
    writeln('0. Sair');
    write('Escolha uma opção: ');
    readln(Opcao);

    case Opcao of
      1: begin
        // Criptografar texto
        write('Digite o texto a ser criptografado: ');
        readln(Texto);
        write('Digite o deslocamento (1 a 26): ');
        readln(Deslocamento);
        if (Deslocamento < 1) or (Deslocamento > 26) then
          writeln('Deslocamento inválido. Deve ser um número entre 1 e 26.')
        else
        begin
          TextoProcessado := CriptografarCifraCesar(Texto, Deslocamento);
          writeln('Texto criptografado: ', TextoProcessado);
        end;
      end;
      2: begin
        // Descriptografar texto
        write('Digite o texto criptografado: ');
        readln(Texto);
        write('Digite o deslocamento (1 a 26): ');
        readln(Deslocamento);
        if (Deslocamento < 1) or (Deslocamento > 26) then
          writeln('Deslocamento inválido. Deve ser um número entre 1 e 26.')
        else
        begin
          TextoProcessado := DescriptografarCifraCesar(Texto, Deslocamento);
          writeln('Texto descriptografado: ', TextoProcessado);
        end;
      end;
    end;

    if Opcao <> 0 then
      writeln('Pressione Enter para continuar...');
      readln;
  until Opcao = 0;
end;

begin
  MenuTela();
end.
