.class public abstract Lcom/huawei/hms/update/ui/b;
.super Ljava/lang/Object;
.source "AbstractDialog.java"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Lcom/huawei/hms/update/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 2

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "androidhwext:style/Theme.Emui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract a()Landroid/app/AlertDialog;
.end method

.method public a(Lcom/huawei/hms/update/ui/a;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/huawei/hms/update/ui/b;->b:Lcom/huawei/hms/update/ui/a;

    .line 66
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/b;->f()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/b;->f()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/b;->a()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/update/ui/b;->a:Landroid/app/AlertDialog;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object p1, p0, Lcom/huawei/hms/update/ui/b;->a:Landroid/app/AlertDialog;

    new-instance v0, Lcom/huawei/hms/update/ui/b$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/update/ui/b$1;-><init>(Lcom/huawei/hms/update/ui/b;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 82
    iget-object p1, p0, Lcom/huawei/hms/update/ui/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-void

    .line 67
    :cond_1
    :goto_0
    const-string p1, "AbstractDialog"

    const-string v0, "In show, The activity is null or finishing."

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public b()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/huawei/hms/update/ui/b;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 92
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/huawei/hms/update/ui/b;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/huawei/hms/update/ui/b;->b:Lcom/huawei/hms/update/ui/a;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Lcom/huawei/hms/update/ui/a;->a(Lcom/huawei/hms/update/ui/b;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/huawei/hms/update/ui/b;->b:Lcom/huawei/hms/update/ui/a;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p0}, Lcom/huawei/hms/update/ui/a;->b(Lcom/huawei/hms/update/ui/b;)V

    .line 137
    :cond_0
    return-void
.end method

.method protected f()Landroid/app/Activity;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/huawei/hms/update/ui/b;->b:Lcom/huawei/hms/update/ui/a;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/huawei/hms/update/ui/a;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()I
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/b;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/b;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    const/4 v0, 0x3

    return v0
.end method
