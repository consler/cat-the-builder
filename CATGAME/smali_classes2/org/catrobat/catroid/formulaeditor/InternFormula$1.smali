.class synthetic Lorg/catrobat/catroid/formulaeditor/InternFormula$1;
.super Ljava/lang/Object;
.source "InternFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/InternFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

.field static final synthetic $SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPropertiesAfterModification:[I

.field static final synthetic $SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 337
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->values()[Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 223
    :goto_6
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->values()[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPropertiesAfterModification:[I

    :try_start_7
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPropertiesAfterModification:[I

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPropertiesAfterModification;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    .line 124
    :goto_8
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->values()[Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    :try_start_9
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->LEFT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    :goto_9
    :try_start_a
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    sget-object v3, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->MIDDLE:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternFormula$CursorTokenPosition:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->RIGHT:Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula$CursorTokenPosition;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    return-void
.end method
