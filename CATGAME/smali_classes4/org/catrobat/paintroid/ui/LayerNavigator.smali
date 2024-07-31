.class public final Lorg/catrobat/paintroid/ui/LayerNavigator;
.super Ljava/lang/Object;
.source "LayerNavigator.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/LayerNavigator;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Navigator;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "showToast",
        "",
        "id",
        "",
        "length",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerNavigator;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public showToast(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "length"    # I

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerNavigator;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/catrobat/paintroid/ui/ToastFactory;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method
