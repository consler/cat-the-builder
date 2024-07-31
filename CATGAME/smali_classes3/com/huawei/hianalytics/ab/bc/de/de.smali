.class public Lcom/huawei/hianalytics/ab/bc/de/de;
.super Ljava/lang/Object;


# direct methods
.method protected static ab()Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;
    .locals 2

    const-string v0, "hmsSdk"

    const-string v1, "generate UploadData"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/de/gh;->ab()Lcom/huawei/hianalytics/ab/bc/de/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/de/gh;->bc()V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/de/gh;->ab()Lcom/huawei/hianalytics/ab/bc/de/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/de/gh;->de()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "event chifer is empty"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/de/gh;->ab()Lcom/huawei/hianalytics/ab/bc/de/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/de/gh;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static ab(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/ab;
    .locals 2

    new-instance v0, Lcom/huawei/hianalytics/ab/ef/ab;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/ef/ab;-><init>()V

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->de(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/ab;->ab(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/bc;
    .locals 1

    new-instance v0, Lcom/huawei/hianalytics/ab/ef/bc;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/ef/bc;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/bc;->fg(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/bc;->ab(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/ef/bc;->cd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/huawei/hianalytics/ab/ef/bc;->ef(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "hmshi"

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "qrt"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/bc;->de(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/cd;
    .locals 2

    new-instance v0, Lcom/huawei/hianalytics/ab/ef/cd;

    invoke-direct {v0}, Lcom/huawei/hianalytics/ab/ef/cd;-><init>()V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/ef/cd;->ab(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->de()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/ab/ef/cd;->bc(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/huawei/hianalytics/ab/ef/cd;->cd(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/cd;->de(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static bc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ef()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App-Id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->fg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App-Ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Sdk-Name"

    const-string v2, "hianalytics"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Sdk-Ver"

    const-string v2, "2.2.0.305"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Device-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "servicetag"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string v1, "hmsSdk"

    const-string v2, "sendData RequestId : %s"

    invoke-static {v1, v2, p0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "Request-Id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
