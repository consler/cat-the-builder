.class public Lcom/huawei/hms/common/internal/DialogRedirectImpl;
.super Lcom/huawei/hms/common/internal/DialogRedirect;
.source "DialogRedirectImpl.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I

.field private final c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/DialogRedirect;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;->c:Landroid/content/Intent;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;->a:Landroid/app/Activity;

    .line 4
    iput p3, p0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;->b:I

    return-void
.end method


# virtual methods
.method public final redirect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
