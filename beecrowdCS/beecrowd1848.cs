using System; 

class URI {

    static void Main(string[] args) { 
       int qtd = 0;

        while (qtd < 3)
        {
            int soma = 0;

            while (true)
            {
                string entrada = Console.ReadLine();

                if (entrada == "caw caw")
                    break;

                soma += ConvertBlinkToDecimal(entrada);
            }

            Console.WriteLine(soma);
            qtd++;
        }
    }

    static int ConvertBlinkToDecimal(string blink)
    {
        return Convert.ToInt32(blink.Replace('-', '0').Replace('*', '1'), 2);
    }
}
