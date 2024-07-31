.class final Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $grantResults:[I

.field final synthetic $permissions:[Ljava/lang/String;

.field final synthetic $requestCode:I

.field final synthetic this$0:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/MainActivity;I[Ljava/lang/String;[I)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    iput p2, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->$requestCode:I

    iput-object p3, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->$permissions:[Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->$grantResults:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 609
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getPresenterMain$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    .line 610
    iget v1, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->$requestCode:I

    .line 611
    iget-object v2, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->$permissions:[Ljava/lang/String;

    .line 612
    iget-object v3, p0, Lorg/catrobat/paintroid/MainActivity$onRequestPermissionsResult$1;->$grantResults:[I

    .line 609
    invoke-interface {v0, v1, v2, v3}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 614
    return-void
.end method
