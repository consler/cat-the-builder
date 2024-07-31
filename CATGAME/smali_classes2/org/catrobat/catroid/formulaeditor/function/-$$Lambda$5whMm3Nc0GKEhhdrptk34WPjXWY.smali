.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;


# static fields
.field public static final synthetic INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$5whMm3Nc0GKEhhdrptk34WPjXWY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(DD)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
