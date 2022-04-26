BEGIN {
    before = 0
    after = 0
    matchnum = ""
    funcName = ""
    printf("Begin awk test. \n");
}

{
    if( NF > 2)
    {
        after=strtonum("0x"$1);
        matchnum=strtonum("0x"sysmbolNum);
        printf("%s %s\n", after, matchnum);
        if(after < matchnum )
        {
             before=after;
             funcName=$3;
        }
        else
        {
             printf("%s\n",funcName);
             exit;
        }
    }
}

END {
    printf("End awk test. \n");
}
