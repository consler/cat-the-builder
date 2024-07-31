.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;


# static fields
.field public static final synthetic INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$v48IWLyyT0RksXjoqB-qlHAGs8s;

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

    invoke-static {p1}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;->lambda$addFunctionsToMap$8([Ljava/lang/Double;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
