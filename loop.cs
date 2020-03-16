public struct Loop
{
    static int Main()
    {
        int a = 0;
        int i = 0;

        while (i < 250 * 1000 * 1000)
        {
            ++i;
            ++a;
        }

        return a;
    }
}
