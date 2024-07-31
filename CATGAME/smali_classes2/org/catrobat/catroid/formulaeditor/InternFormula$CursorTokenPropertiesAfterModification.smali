.class public final enum Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
.super Ljava/lang/Enum;
.source "InternFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/InternFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorTokenPropertiesAfterModification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

.field public static final enum DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

.field public static final enum LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

.field public static final enum RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

.field public static final enum SELECT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    const-string v1, "SELECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->SELECT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    const-string v1, "DO_NOT_MODIFY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->DO_NOT_MODIFY:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    .line 43
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    sget-object v6, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->SELECT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;
    .locals 1

    .line 43
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    return-object v0
.end method
