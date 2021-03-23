.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;
.super Ljava/lang/Thread;
.source "ConnectionManager.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    const/16 v2, 0x200

    new-array v3, v2, [B

    const/16 v4, 0x10

    new-array v5, v4, [B

    .line 875
    :goto_0
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->c(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 876
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x32

    const/4 v9, -0x1

    const-string v10, "5A5A"

    const-string v11, "!BIN"

    const/4 v12, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_0

    goto/16 :goto_3

    .line 951
    :cond_0
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v5, v12, v4}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->wifiReadData([BII)I

    move-result v0

    .line 952
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "textReceiveUsbDataThread wifiReadData len:"

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    if-ne v0, v9, :cond_1

    .line 955
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v13, v14}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;J)J

    .line 957
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 959
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v5}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->returnPacketHeader([B)Ljava/lang/String;

    move-result-object v0

    .line 964
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "wifi_mode receive format:"

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 966
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v11}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x1f0

    new-array v6, v0, [B

    .line 969
    iget-object v10, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v10, v6, v12, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->wifiReadData([BII)I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 971
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v13, v14}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;J)J

    .line 973
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 975
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 979
    :cond_2
    invoke-static {v5, v12, v3, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 980
    invoke-static {v6, v12, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v3, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[BI)I

    goto/16 :goto_0

    .line 982
    :cond_3
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 984
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v10}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 985
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v5}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->receivePayLoadData([B)I

    goto/16 :goto_3

    .line 878
    :cond_4
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x100126

    const-string v15, "DEFULT"

    const/4 v4, 0x2

    if-eq v13, v14, :cond_7

    const v14, 0x191258

    if-eq v13, v14, :cond_6

    const v14, 0x77f6fa98

    if-eq v13, v14, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_d

    if-eq v0, v6, :cond_b

    if-eq v0, v4, :cond_9

    goto/16 :goto_3

    .line 927
    :cond_9
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v10}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3, v12, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->usbReadData([BII)I

    move-result v0

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "textReceiveUsbDataThread usbReadData NEW_FORMAT len:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-ne v0, v9, :cond_a

    .line 933
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 935
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 939
    :cond_a
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->returnPacketHeader([B)Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 942
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->receivePayLoad512Data([B)I

    goto/16 :goto_3

    .line 908
    :cond_b
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v11}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 909
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3, v12, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Read([BII)I

    move-result v0

    .line 910
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "textReceiveUsbDataThread Read BIN_FORMAT len:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-ne v0, v9, :cond_c

    .line 913
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 915
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 919
    :cond_c
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->returnPacketHeader([B)Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 921
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v11}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 922
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v3, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[BI)I

    goto :goto_3

    .line 880
    :cond_d
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v15}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 881
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3, v12, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->usbReadData([BII)I

    move-result v0

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "textReceiveUsbDataThread usbReadData DEFULT_FORMAT len:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-ne v0, v9, :cond_e

    .line 885
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 887
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 891
    :cond_e
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->returnPacketHeader([B)Ljava/lang/String;

    move-result-object v0

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "usb_mode receive format:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 894
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v11}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 895
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v3, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[BI)I

    .line 896
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->stopWriteHeartBeat()V

    .line 897
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->stopReadHeartBeat()V

    :cond_f
    :goto_3
    const/16 v4, 0x10

    goto/16 :goto_0

    .line 898
    :cond_10
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 899
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0, v10}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    .line 901
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->receivePayLoad512Data([B)I

    goto :goto_3

    :cond_11
    return-void
.end method
