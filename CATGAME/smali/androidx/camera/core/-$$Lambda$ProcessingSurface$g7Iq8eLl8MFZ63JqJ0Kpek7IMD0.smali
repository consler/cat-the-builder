.class public final synthetic Landroidx/camera/core/-$$Lambda$ProcessingSurface$g7Iq8eLl8MFZ63JqJ0Kpek7IMD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ProcessingSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ProcessingSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ProcessingSurface$g7Iq8eLl8MFZ63JqJ0Kpek7IMD0;->f$0:Landroidx/camera/core/ProcessingSurface;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ProcessingSurface$g7Iq8eLl8MFZ63JqJ0Kpek7IMD0;->f$0:Landroidx/camera/core/ProcessingSurface;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ProcessingSurface;->lambda$new$0$ProcessingSurface(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
