.class public interface abstract Lorg/catrobat/catroid/content/bricks/UserVariableBrickInterface;
.super Ljava/lang/Object;
.source "UserVariableBrickInterface.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/Brick;
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/catrobat/catroid/content/bricks/Brick;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getUserVariable()Lorg/catrobat/catroid/formulaeditor/UserVariable;
.end method

.method public abstract setUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
.end method
