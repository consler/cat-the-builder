.class public final enum Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
.super Ljava/lang/Enum;
.source "FormulaElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/FormulaElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum BRACKET:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

.field public static final enum USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 102
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "OPERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "FUNCTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "NUMBER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "SENSOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "USER_VARIABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "USER_LIST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "USER_DEFINED_BRICK_INPUT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "BRACKET"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->BRACKET:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "STRING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v1, "COLLISION_FORMULA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 101
    const/16 v1, 0xa

    new-array v1, v1, [Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v12, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v12, v1, v2

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->BRACKET:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->STRING:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 101
    const-class v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;
    .locals 1

    .line 101
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    return-object v0
.end method
