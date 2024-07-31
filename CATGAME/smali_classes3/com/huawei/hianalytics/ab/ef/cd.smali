.class public Lcom/huawei/hianalytics/ab/ef/cd;
.super Lcom/huawei/hianalytics/ab/bc/cd/bc/cd;


# instance fields
.field fg:Ljava/lang/String;

.field gh:Ljava/lang/String;

.field private hi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hianalytics/ab/bc/cd/bc/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public cd()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->hi:Ljava/lang/String;

    const-string v2, "_rom_ver"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->ab:Ljava/lang/String;

    const-string v2, "_emui_ver"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "_model"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->fg:Ljava/lang/String;

    const-string v2, "_mcc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->gh:Ljava/lang/String;

    const-string v2, "_mnc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->bc:Ljava/lang/String;

    const-string v2, "_package_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->cd:Ljava/lang/String;

    const-string v2, "_app_ver"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_lib_ver"

    const-string v2, "2.2.0.305"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->de:Ljava/lang/String;

    const-string v2, "_channel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_lib_name"

    const-string v2, "hianalytics"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->ef:Ljava/lang/String;

    const-string v2, "_oaid_tracking_flag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public fg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->fg:Ljava/lang/String;

    return-void
.end method

.method public gh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->gh:Ljava/lang/String;

    return-void
.end method

.method public hi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/ef/cd;->hi:Ljava/lang/String;

    return-void
.end method
