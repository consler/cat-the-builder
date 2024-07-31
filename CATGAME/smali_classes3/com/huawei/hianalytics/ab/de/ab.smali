.class public Lcom/huawei/hianalytics/ab/de/ab;
.super Lcom/huawei/hianalytics/ab/bc/de/de;


# direct methods
.method public static ab(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/de;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;"
        }
    .end annotation

    const-string v0, "hmsSdk"

    const-string v1, "generate UploadData"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/de/de;->ab()Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/de/gh;->ab()Lcom/huawei/hianalytics/ab/bc/de/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/de/gh;->de()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/huawei/hianalytics/ab/de/ab;->bc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/bc;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;->ab(Lcom/huawei/hianalytics/ab/bc/cd/bc/bc;)V

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/de/ab;->cd(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/ab;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;->ab(Lcom/huawei/hianalytics/ab/ef/ab;)V

    invoke-static {p2, p1, p4}, Lcom/huawei/hianalytics/ab/de/ab;->bc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/cd;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;->ab(Lcom/huawei/hianalytics/ab/bc/cd/bc/cd;)V

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/cd;->fg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;->ab(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/bc/cd/bc/ef;->ab(Ljava/util/List;)V

    return-object v0
.end method

.method protected static bc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/bc;
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/de/de;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/bc;

    move-result-object p0

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/cd;->kl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->ef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/huawei/hianalytics/ab/ef/bc;->bc(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/huawei/hianalytics/ab/ef/bc;->gh(Ljava/lang/String;)V

    return-object p0
.end method

.method protected static bc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/cd;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/huawei/hianalytics/ab/bc/de/de;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/cd;

    move-result-object p2

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->bc(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/huawei/hianalytics/ab/ef/cd;->fg(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/huawei/hianalytics/ab/ef/cd;->gh(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/cd;->bc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hianalytics/ab/ef/cd;->hi(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->fg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/huawei/hianalytics/ab/ef/cd;->ef(Ljava/lang/String;)V

    return-object p2
.end method

.method protected static cd(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/ab;
    .locals 4

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/bc/de/de;->ab(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/ef/ab;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hianalytics/ab/cd/ab/ab;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->kl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hianalytics/ab/ef/ab;->fg(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hianalytics/ab/ef/ab;->de(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->ab()Lcom/huawei/hianalytics/ab/cd/bc/ab;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/huawei/hianalytics/ab/cd/bc/ab;->cd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/ab;->gh(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/cd/ab/bc;

    move-result-object p0

    sget-object p1, Lcom/huawei/hianalytics/ab/de/ab$1;->ab:[I

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/cd/ab/bc;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;->bc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/ab;->ef(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;->bc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/ab;->bc(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/cd/ab/ab;->bc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/huawei/hianalytics/ab/ef/ab;->cd(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/huawei/hianalytics/ab/de/ab;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p1}, Lcom/huawei/hianalytics/ab/ab/cd;->lm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p2
.end method
