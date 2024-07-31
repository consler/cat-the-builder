.class public Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;
.super Ljava/lang/Object;


# static fields
.field private static ab:Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

.field private static cd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bc:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->cd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;
    .locals 1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object v0

    return-object v0
.end method

.method private static ab(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/huawei/hianalytics/ab/bc/ik/bc/bc;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p8

    invoke-static {p6, p1, v0, v3}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "oper"

    move-object v0, v7

    move-object v1, p7

    move-object v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hianalytics/ab/bc/ik/bc/bc;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;)V

    return-void
.end method

.method private static declared-synchronized bc()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;
    .locals 2

    const-class v0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    invoke-direct {v1}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;-><init>()V

    sput-object v1, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    :cond_0
    sget-object v1, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab:Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bc(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/huawei/hianalytics/ab/bc/bc/ab;->bc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hianalytics/ab/ab/bc;->bc(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->ab()Lcom/huawei/hianalytics/ab/bc/kl/gh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/kl/gh;->bc()Z

    move-result v1

    const-string v2, "HiAnalyticsEventServer"

    if-eqz v1, :cond_1

    const-string v1, "global_v2"

    const-string v3, "app_ver"

    const-string v4, ""

    invoke-static {p1, v1, v3, v4}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->bc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v1, v3, v0}, Lcom/huawei/hianalytics/ab/bc/ij/ab;->ab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/huawei/hianalytics/ab/ab/bc;->cd(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "app ver is first save!"

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "the appVers are different!"

    invoke-static {v2, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;

    move-result-object p1

    const-string v0, "alltype"

    invoke-virtual {p1, v4, v0, v5}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "userManager.isUserUnlocked() == false"

    :goto_0
    invoke-static {v2, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->cd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->cd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v4

    :goto_0
    sub-long v6, v2, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    :goto_1
    const-string v8, "OnPause"

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ab(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->ab()Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hianalytics/ab/bc/cd/ab/ab;->cd()Lcom/huawei/hianalytics/ab/bc/cd/ab/de;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/bc/ab;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/cd/ab/de;->cd(Ljava/lang/String;)V

    return-void
.end method

.method public ab(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "HiAnalyticsEventServer"

    const-string p2, "onReport() null context or SDK was not init."

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "hmsSdk"

    const-string v1, "onReport: Before calling runtaskhandler()"

    invoke-static {v0, v1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->fg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ab(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne v2, p2, :cond_0

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2, v0, v1}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    move-wide v7, v0

    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ik/bc/bc;

    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/huawei/hianalytics/ab/bc/ik/bc/bc;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;)V

    return-void
.end method

.method public ab(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V
    .locals 8

    new-instance v7, Lcom/huawei/hianalytics/ab/bc/de/fg;

    invoke-static {p2}, Lcom/huawei/hianalytics/ab/bc/kl/ef;->ab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p1

    move-object v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hianalytics/ab/bc/de/fg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7}, Lcom/huawei/hianalytics/ab/bc/de/fg;->ab()V

    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/cd;->ij(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HiAnalyticsEventServer"

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/cd;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v6, 0x7530

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    const-string v0, "begin to call onReport!"

    invoke-static {v1, v0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->ab(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v4, v5}, Lcom/huawei/hianalytics/ab/ab/cd;->ab(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/ab/bc;->fg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "autoReport timeout. interval < 30s "

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "auto report is closed tag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/ab/cd;->ik(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hianalytics/ab/bc/bc/cd;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "strNetworkType is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HiAnalyticsEventServer"

    invoke-static {p2, p1}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->bc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/huawei/hianalytics/ab/bc/ik/bc/cd;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/bc/cd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/ab/bc/ik/cd/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ik/cd/ab;)V

    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "HiAnalyticsEventServer"

    const-string p2, "onPause null context or SDK was not init."

    invoke-static {p1, p2}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p2, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->cd:Ljava/util/Map;

    const-wide/16 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ab(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "$AppOnPause"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->cd:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const-string v8, "OnResume"

    move-object v0, p1

    move-object v1, p3

    move-object v6, p4

    move-object v7, p2

    invoke-static/range {v0 .. v8}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->ab(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bc(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "$AppOnResume"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/huawei/hianalytics/ab/bc/ik/ab/ab;->bc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
