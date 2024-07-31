.class final Lcom/huawei/hms/update/ui/l$1;
.super Ljava/lang/Object;
.source "UpdateWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/a/a/b;

.field final synthetic b:I

.field final synthetic c:Lcom/huawei/hms/update/a/a/c;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/huawei/hms/update/ui/l$1;->a:Lcom/huawei/hms/update/a/a/b;

    iput p2, p0, Lcom/huawei/hms/update/ui/l$1;->b:I

    iput-object p3, p0, Lcom/huawei/hms/update/ui/l$1;->c:Lcom/huawei/hms/update/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l$1;->a:Lcom/huawei/hms/update/a/a/b;

    iget v1, p0, Lcom/huawei/hms/update/ui/l$1;->b:I

    iget-object v2, p0, Lcom/huawei/hms/update/ui/l$1;->c:Lcom/huawei/hms/update/a/a/c;

    invoke-interface {v0, v1, v2}, Lcom/huawei/hms/update/a/a/b;->a(ILcom/huawei/hms/update/a/a/c;)V

    .line 105
    return-void
.end method
