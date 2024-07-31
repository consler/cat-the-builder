.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;


# static fields
.field public static final synthetic INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$2wIPg0Ef1hRovJBKHrIV6wA3Vgg;

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

    invoke-static {p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;->lambda$addFunctionsToMap$7(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
