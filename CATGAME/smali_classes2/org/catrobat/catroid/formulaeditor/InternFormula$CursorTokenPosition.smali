.class public final enum Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;
.super Ljava/lang/Enum;
.source "InternFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/InternFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorTokenPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

.field public static final enum LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

.field public static final enum MIDDLE:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

.field public static final enum RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    const-string v1, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->MIDDLE:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    .line 39
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->MIDDLE:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;
    .locals 1

    .line 39
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    return-object v0
.end method
