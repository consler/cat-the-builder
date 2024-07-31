.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$qrLn_XI1j1x4jhqRvP925EZ_Pc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/-$$Lambda$ImageCapture$qrLn_XI1j1x4jhqRvP925EZ_Pc0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/-$$Lambda$ImageCapture$qrLn_XI1j1x4jhqRvP925EZ_Pc0;

    invoke-direct {v0}, Landroidx/camera/core/-$$Lambda$ImageCapture$qrLn_XI1j1x4jhqRvP925EZ_Pc0;-><init>()V

    sput-object v0, Landroidx/camera/core/-$$Lambda$ImageCapture$qrLn_XI1j1x4jhqRvP925EZ_Pc0;->INSTANCE:Landroidx/camera/core/-$$Lambda$ImageCapture$qrLn_XI1j1x4jhqRvP925EZ_Pc0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->lambda$preTakePicture$12(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
