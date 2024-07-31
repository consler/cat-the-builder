.class abstract Lcom/huawei/hms/update/ui/d$a;
.super Lcom/huawei/hms/update/ui/b;
.source "ConfirmDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/update/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/update/ui/d$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/AlertDialog;
    .locals 3

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/d$a;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/d$a;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 97
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/d$a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/d$a;->i()I

    move-result v1

    new-instance v2, Lcom/huawei/hms/update/ui/d$a$1;

    invoke-direct {v2, p0}, Lcom/huawei/hms/update/ui/d$a$1;-><init>(Lcom/huawei/hms/update/ui/d$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/d$a;->j()I

    move-result v1

    new-instance v2, Lcom/huawei/hms/update/ui/d$a$2;

    invoke-direct {v2, p0}, Lcom/huawei/hms/update/ui/d$a$2;-><init>(Lcom/huawei/hms/update/ui/d$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected abstract h()I
.end method

.method protected abstract i()I
.end method

.method protected abstract j()I
.end method
