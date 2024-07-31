.class public Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "ConcurrentFormulaHashMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d546f3d461ca684L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->clone()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;-><init>()V

    .line 36
    .local v0, "copiedMap":Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 37
    .local v2, "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 38
    .local v3, "value":Lorg/catrobat/catroid/formulaeditor/Formula;
    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->clone()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .end local v2    # "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .end local v3    # "value":Lorg/catrobat/catroid/formulaeditor/Formula;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method
