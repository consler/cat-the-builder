.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$TZIaA6EEs0SdzpNdeZr3j8JJk5s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute([Ljava/lang/Double;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;->lambda$addFunctionsToMap$4([Ljava/lang/Double;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
