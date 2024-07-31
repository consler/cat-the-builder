.class Lcom/huawei/hms/update/ui/b$1;
.super Ljava/lang/Object;
.source "AbstractDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/ui/b;->a(Lcom/huawei/hms/update/ui/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/ui/b;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/ui/b;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/huawei/hms/update/ui/b$1;->a:Lcom/huawei/hms/update/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/huawei/hms/update/ui/b$1;->a:Lcom/huawei/hms/update/ui/b;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/b;->d()V

    .line 79
    return-void
.end method
