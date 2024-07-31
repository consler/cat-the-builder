.class final Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;
.super Ljava/lang/Object;
.source "PreviewView.kt"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/camera/core/SurfaceRequest$Result;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/camera/core/SurfaceRequest$Result;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;

    invoke-direct {v0}, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;->INSTANCE:Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 0
    .param p1, "it"    # Landroidx/camera/core/SurfaceRequest$Result;

    .line 49
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/camera/PreviewView$createSurfaceProvider$1$2;->accept(Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
