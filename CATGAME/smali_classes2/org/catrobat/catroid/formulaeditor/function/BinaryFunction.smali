.class public final Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;
.super Ljava/lang/Object;
.source "BinaryFunction.kt"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t0\u0008\"\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;",
        "Lorg/catrobat/catroid/formulaeditor/function/FormulaFunction;",
        "action",
        "Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;",
        "(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V",
        "execute",
        "",
        "args",
        "",
        "",
        "([Ljava/lang/Double;)Ljava/lang/Object;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final action:Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;)V
    .locals 1
    .param p1, "action"    # Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;->action:Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;

    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/Double;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Double;

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 28
    .local v2, "arg1":D
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 29
    .local v0, "arg2":D
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunction;->action:Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;

    invoke-interface {v4, v2, v3, v0, v1}, Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;->execute(DD)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 28
    .end local v0    # "arg2":D
    :cond_0
    return-object v1

    .line 27
    .end local v2    # "arg1":D
    :cond_1
    return-object v1
.end method
