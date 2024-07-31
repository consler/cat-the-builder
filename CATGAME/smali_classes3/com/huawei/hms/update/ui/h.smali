.class public Lcom/huawei/hms/update/ui/h;
.super Lcom/huawei/hms/update/ui/a;
.source "HiappWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/a;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/h;->b()Landroid/app/Activity;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/update/ui/h;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    return v1

    .line 139
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 140
    const-string v3, "com.huawei.appmarket.intent.action.AppDetail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v3, "APP_PACKAGENAME"

    iget-object v4, p0, Lcom/huawei/hms/update/ui/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "com.huawei.appmarket"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/h;->getRequestCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 151
    const/4 v0, 0x1

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v0, "HiappWizard"

    const-string v2, "can not open hiapp"

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return v1

    .line 130
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 180
    iget v0, p0, Lcom/huawei/hms/update/ui/h;->f:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/update/ui/h;->b(II)V

    .line 181
    return-void
.end method

.method public a(Lcom/huawei/hms/update/ui/b;)V
    .locals 2

    .line 97
    const-string v0, "HiappWizard"

    const-string v1, "Enter onCancel."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    instance-of p1, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/h;->a()V

    .line 102
    :cond_0
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/update/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/h;->c()V

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/update/ui/b;

    .line 165
    iget-object v0, p0, Lcom/huawei/hms/update/ui/h;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "hms_update_title"

    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/update/ui/h;->h:Ljava/lang/String;

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/update/ui/i;

    iget-object v1, p0, Lcom/huawei/hms/update/ui/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/i;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p1, p0}, Lcom/huawei/hms/update/ui/b;->a(Lcom/huawei/hms/update/ui/a;)V

    .line 172
    iput-object p1, p0, Lcom/huawei/hms/update/ui/h;->d:Lcom/huawei/hms/update/ui/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_1

    .line 173
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 174
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In showDialog, Failed to show the dialog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HiappWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_1
    return-void
.end method

.method public b(Lcom/huawei/hms/update/ui/b;)V
    .locals 2

    .line 110
    const-string v0, "HiappWizard"

    const-string v1, "Enter onDoWork."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/b;->c()V

    .line 114
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/h;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/h;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 116
    iget p1, p0, Lcom/huawei/hms/update/ui/h;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/h;->b(II)V

    goto :goto_0

    .line 118
    :cond_0
    iget p1, p0, Lcom/huawei/hms/update/ui/h;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/h;->a(II)V

    .line 122
    :cond_1
    :goto_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .line 61
    const/16 v0, 0x7d5

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityCreate(Landroid/app/Activity;)V

    .line 34
    iget-object p1, p0, Lcom/huawei/hms/update/ui/h;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    if-nez p1, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/huawei/hms/update/ui/h;->f:I

    .line 40
    iget-object p1, p0, Lcom/huawei/hms/update/ui/h;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->isNeedConfirm()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/update/ui/h;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    const-class p1, Lcom/huawei/hms/update/ui/i;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/h;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/h;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 45
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/h;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    .line 46
    iget p1, p0, Lcom/huawei/hms/update/ui/h;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/h;->b(II)V

    goto :goto_0

    .line 48
    :cond_2
    iget p1, p0, Lcom/huawei/hms/update/ui/h;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/h;->a(II)V

    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityDestroy()V

    .line 57
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/h;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/huawei/hms/update/ui/h;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onBridgeActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 71
    :cond_0
    iget p2, p0, Lcom/huawei/hms/update/ui/h;->f:I

    const/4 p3, 0x5

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/h;->getRequestCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 72
    iget-object p1, p0, Lcom/huawei/hms/update/ui/h;->g:Ljava/lang/String;

    iget p2, p0, Lcom/huawei/hms/update/ui/h;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/update/ui/h;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget p1, p0, Lcom/huawei/hms/update/ui/h;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/h;->b(II)V

    goto :goto_0

    .line 77
    :cond_1
    const/16 p1, 0x8

    iget p2, p0, Lcom/huawei/hms/update/ui/h;->f:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/update/ui/h;->b(II)V

    .line 79
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 82
    :cond_2
    return v0
.end method

.method public onBridgeConfigurationChanged()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeConfigurationChanged()V

    .line 89
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/h;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/h;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/huawei/hms/update/ui/h;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 187
    return-void

    .line 190
    :cond_0
    const/4 p2, 0x4

    if-ne p2, p1, :cond_1

    .line 191
    const-string p1, "HiappWizard"

    const-string p2, "In onKeyUp, Call finish."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/h;->b()Landroid/app/Activity;

    move-result-object p1

    .line 194
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 195
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 199
    :cond_1
    return-void
.end method
