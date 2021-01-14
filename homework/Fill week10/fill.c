//16384-24575-->螢幕顯示
//24576 -->偵測鍵盤

initial://  i設回16384為螢幕顯示第一號
    i = 16384;
color: //   顏色
    if(i>=24576); //壓下任意鍵
    goto leavefor; 

    int  color1 =0 //白色
    if(M[24576] ==0){//放開鍵盤時
        goto NEXT
    }
    color1 = -1//黑色

NEXT://逐一對16384-24575的位置設值 0或-1
    M[i] = color;
    i++;
    goto color;

leavefor:
    goto initial;