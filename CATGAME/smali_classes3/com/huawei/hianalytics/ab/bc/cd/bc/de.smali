.class public Lcom/huawei/hianalytics/ab/bc/cd/bc/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hianalytics/ab/bc/cd/bc/fg;


# instance fields
.field private ab:Ljava/lang/String;

.field private bc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private de:Ljava/lang/String;

.field private ef:Ljava/lang/String;

.field private fg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public ab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ab:Ljava/lang/String;

    return-void
.end method

.method public ab(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->bc:Ljava/lang/String;

    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab()Lcom/huawei/hianalytics/ab/bc/gh/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v1

    sget-object v2, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v1, v2}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ab:Ljava/lang/String;

    const-string v0, "eventtime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de:Ljava/lang/String;

    const-string v0, "event_session_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ef:Ljava/lang/String;

    const-string v0, "first_session_event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->fg:Ljava/lang/String;

    return-void
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de:Ljava/lang/String;

    return-object v0
.end method

.method public bc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->bc:Ljava/lang/String;

    return-void
.end method

.method public cd()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ab:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de:Ljava/lang/String;

    const-string v2, "eventtime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->bc:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ef:Ljava/lang/String;

    const-string v2, "event_session_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->fg:Ljava/lang/String;

    const-string v2, "first_session_event"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "properties"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public cd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    return-void
.end method

.method public de()Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->ab()Lcom/huawei/hianalytics/ab/bc/gh/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hianalytics/ab/bc/gh/bc;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab()Lcom/huawei/hianalytics/ab/bc/ab/bc;

    move-result-object v2

    sget-object v3, Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;->ab:Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;

    invoke-virtual {v2, v3}, Lcom/huawei/hianalytics/ab/bc/ab/bc;->ab(Lcom/huawei/hianalytics/ab/bc/ab/bc$ab;)Lcom/huawei/hianalytics/ab/bc/ab/fg;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->cd:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/huawei/hianalytics/ab/bc/ab/fg;->bc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "properties"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public de(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->de:Ljava/lang/String;

    return-void
.end method

.method public ef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->ef:Ljava/lang/String;

    return-void
.end method

.method public fg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hianalytics/ab/bc/cd/bc/de;->fg:Ljava/lang/String;

    return-void
.end method
