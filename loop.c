int main()
{
    int a = 0, i = 0;
    while (i < 250 * 1000 * 1000)
        ++i, ++a;

    return a;
}
