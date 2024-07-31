.class public Lcom/huawei/hms/update/ui/f;
.super Lcom/huawei/hms/update/ui/a;
.source "GooglePlayWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/a;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/f;->b()Landroid/app/Activity;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/update/ui/f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    return v1

    .line 138
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/update/ui/f;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    const-string v2, "com.android.vending"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/f;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 147
    const/4 v0, 0x1

    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v0, "GooglePlayWizard"

    const-string v2, "can not open google play"

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v1

    .line 130
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 152
    iget v0, p0, Lcom/huawei/hms/update/ui/f;->f:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/update/ui/f;->b(II)V

    .line 153
    return-void
.end method

.method public a(Lcom/huawei/hms/update/ui/b;)V
    .locals 2

    .line 97
    const-string v0, "GooglePlayWizard"

    const-string v1, "Enter onCancel."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    instance-of p1, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/f;->a()V

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

    .line 179
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/f;->c()V

    .line 181
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/update/ui/b;

    .line 183
    iget-object v0, p0, Lcom/huawei/hms/update/ui/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "hms_update_title"

    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/update/ui/f;->h:Ljava/lang/String;

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/update/ui/i;

    iget-object v1, p0, Lcom/huawei/hms/update/ui/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/i;->a(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-virtual {p1, p0}, Lcom/huawei/hms/update/ui/b;->a(Lcom/huawei/hms/update/ui/a;)V

    .line 190
    iput-object p1, p0, Lcom/huawei/hms/update/ui/f;->d:Lcom/huawei/hms/update/ui/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_1

    .line 191
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 192
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

    const-string v0, "GooglePlayWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_1
    return-void
.end method

.method public b(Lcom/huawei/hms/update/ui/b;)V
    .locals 2

    .line 110
    const-string v0, "GooglePlayWizard"

    const-string v1, "Enter onDoWork."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/b;->c()V

    .line 114
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/f;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/f;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 116
    iget p1, p0, Lcom/huawei/hms/update/ui/f;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/f;->b(II)V

    goto :goto_0

    .line 118
    :cond_0
    iget p1, p0, Lcom/huawei/hms/update/ui/f;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/f;->a(II)V

    .line 122
    :cond_1
    :goto_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .line 62
    const/16 v0, 0x7d2

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityCreate(Landroid/app/Activity;)V

    .line 35
    iget-object p1, p0, Lcom/huawei/hms/update/ui/f;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    if-nez p1, :cond_0

    .line 36
    return-void

    .line 39
    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/huawei/hms/update/ui/f;->f:I

    .line 41
    iget-object p1, p0, Lcom/huawei/hms/update/ui/f;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->isNeedConfirm()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/update/ui/f;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 42
    const-class p1, Lcom/huawei/hms/update/ui/i;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/f;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/f;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 46
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/f;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    .line 47
    iget p1, p0, Lcom/huawei/hms/update/ui/f;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/f;->b(II)V

    goto :goto_0

    .line 49
    :cond_2
    iget p1, p0, Lcom/huawei/hms/update/ui/f;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/f;->a(II)V

    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityDestroy()V

    .line 58
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/f;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/f;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/huawei/hms/update/ui/f;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onBridgeActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 77
    :cond_0
    iget p2, p0, Lcom/huawei/hms/update/ui/f;->f:I

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/f;->getRequestCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 78
    iget-object p1, p0, Lcom/huawei/hms/update/ui/f;->g:Ljava/lang/String;

    iget p2, p0, Lcom/huawei/hms/update/ui/f;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/update/ui/f;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget p1, p0, Lcom/huawei/hms/update/ui/f;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/f;->b(II)V

    goto :goto_0

    .line 83
    :cond_1
    const/16 p1, 0x8

    iget p2, p0, Lcom/huawei/hms/update/ui/f;->f:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/update/ui/f;->b(II)V

    .line 85
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 88
    :cond_2
    return v0
.end method

.method public onBridgeConfigurationChanged()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeConfigurationChanged()V

    .line 68
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/f;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/f;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/huawei/hms/update/ui/f;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 159
    return-void

    .line 162
    :cond_0
    const/4 p2, 0x4

    if-ne p2, p1, :cond_1

    .line 163
    const-string p1, "GooglePlayWizard"

    const-string p2, "In onKeyUp, Call finish."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/f;->b()Landroid/app/Activity;

    move-result-object p1

    .line 166
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 167
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 171
    :cond_1
    return-void
.end method
