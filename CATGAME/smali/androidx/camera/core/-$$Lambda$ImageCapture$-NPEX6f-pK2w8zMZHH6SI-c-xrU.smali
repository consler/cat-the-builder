.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$-NPEX6f-pK2w8zMZHH6SI-c-xrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/-$$Lambda$ImageCapture$-NPEX6f-pK2w8zMZHH6SI-c-xrU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/-$$Lambda$ImageCapture$-NPEX6f-pK2w8zMZHH6SI-c-xrU;

    invoke-direct {v0}, Landroidx/camera/core/-$$Lambda$ImageCapture$-NPEX6f-pK2w8zMZHH6SI-c-xrU;-><init>()V

    sput-object v0, Landroidx/camera/core/-$$Lambda$ImageCapture$-NPEX6f-pK2w8zMZHH6SI-c-xrU;->INSTANCE:Landroidx/camera/core/-$$Lambda$ImageCapture$-NPEX6f-pK2w8zMZHH6SI-c-xrU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
