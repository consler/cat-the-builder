.class Lcom/huawei/hms/update/a/a;
.super Ljava/lang/Object;
.source "DownloadRecord.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.huawei.hms.update.DOWNLOAD_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/huawei/hms/update/a/a;->a:Ljava/lang/String;

    const-string v0, "mUri"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    iget p2, p0, Lcom/huawei/hms/update/a/a;->b:I

    const-string v0, "mSize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    iget-object p2, p0, Lcom/huawei/hms/update/a/a;->c:Ljava/lang/String;

    const-string v0, "mHash"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget p2, p0, Lcom/huawei/hms/update/a/a;->d:I

    const-string v0, "mReceived"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/huawei/hms/update/a/a;->b:I

    return v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 80
    iput p2, p0, Lcom/huawei/hms/update/a/a;->d:I

    .line 82
    invoke-direct {p0, p1, p3}, Lcom/huawei/hms/update/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.huawei.hms.update.DOWNLOAD_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 53
    const-string p2, "mUri"

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/update/a/a;->a:Ljava/lang/String;

    .line 54
    const-string p2, "mSize"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/huawei/hms/update/a/a;->b:I

    .line 55
    const-string p2, "mHash"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/update/a/a;->c:Ljava/lang/String;

    .line 56
    const-string p2, "mReceived"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/update/a/a;->d:I

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/huawei/hms/update/a/a;->a:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/huawei/hms/update/a/a;->b:I

    .line 69
    iput-object p3, p0, Lcom/huawei/hms/update/a/a;->c:Ljava/lang/String;

    .line 70
    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/hms/update/a/a;->d:I

    .line 71
    return-void
.end method

.method b()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/huawei/hms/update/a/a;->d:I

    return v0
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 125
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/huawei/hms/update/a/a;->b:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/update/a/a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/huawei/hms/update/a/a;->d:I

    iget p2, p0, Lcom/huawei/hms/update/a/a;->b:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    return p1
.end method
