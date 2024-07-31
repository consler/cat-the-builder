.class public final Lorg/catrobat/catroid/formulaeditor/function/ObjectDetectorFunctionProvider;
.super Ljava/lang/Object;
.source "ObjectDetectorFunctionProvider.kt"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/formulaeditor/function/ObjectDetectorFunctionProvider;",
        "Lorg/catrobat/catroid/formulaeditor/function/FunctionProvider;",
        "()V",
        "addFunctionsToMap",
        "",
        "formulaFunctions",
        "",
        "Lorg/catrobat/catroid/formulaeditor/Functions;",
        "Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFunctionsToMap(Ljava/util/Map;)V
    .locals 1
    .param p1, "formulaFunctions"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            "Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "formulaFunctions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    return-void
.end method
