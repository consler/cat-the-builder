.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;


# static fields
.field public static final synthetic INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$ZoXgSMIULSJuyYEgVxvSd967HUU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(D)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
