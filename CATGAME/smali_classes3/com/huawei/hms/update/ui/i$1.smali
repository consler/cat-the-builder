.class Lcom/huawei/hms/update/ui/i$1;
.super Ljava/lang/Object;
.source "InstallConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/ui/i;->a()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/ui/i;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/ui/i;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/huawei/hms/update/ui/i$1;->a:Lcom/huawei/hms/update/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/huawei/hms/update/ui/i$1;->a:Lcom/huawei/hms/update/ui/i;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/i;->e()V

    .line 44
    return-void
.end method
