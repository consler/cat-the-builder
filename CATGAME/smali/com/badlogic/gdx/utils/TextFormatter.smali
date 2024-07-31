.class Lcom/badlogic/gdx/utils/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# instance fields
.field private buffer:Lcom/badlogic/gdx/utils/StringBuilder;

.field private messageFormat:Ljava/text/MessageFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "useMessageFormat"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 32
    if-eqz p2, :cond_0

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->messageFormat:Ljava/text/MessageFormat;

    .line 33
    :cond_0
    return-void
.end method

.method private replaceEscapeChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "changed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 78
    .local v3, "ch":C
    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 80
    iget-object v4, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v5, "\'\'"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 81
    :cond_0
    const/16 v5, 0x7b

    if-ne v3, v5, :cond_5

    .line 82
    add-int/lit8 v6, v2, 0x1

    .line 83
    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_1

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    :cond_1
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    .line 86
    .local v7, "escaped":I
    if-lez v7, :cond_3

    .line 87
    const/4 v8, 0x1

    .line 88
    .end local v0    # "changed":Z
    .local v8, "changed":Z
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 91
    add-int/lit8 v7, v7, -0x1

    if-gtz v7, :cond_2

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v0, v8

    .line 94
    .end local v8    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_3
    sub-int v4, v6, v2

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 95
    :cond_4
    add-int/lit8 v2, v6, -0x1

    .line 96
    .end local v6    # "j":I
    .end local v7    # "escaped":I
    goto :goto_2

    .line 97
    :cond_5
    iget-object v4, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 76
    .end local v3    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, p1

    :goto_3
    return-object v2
.end method

.method private varargs simpleFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "changed":Z
    const/4 v1, -0x1

    .line 119
    .local v1, "placeholder":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 120
    .local v2, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_8

    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 122
    .local v4, "ch":C
    const/16 v5, 0x7b

    if-gez v1, :cond_2

    .line 123
    if-ne v4, v5, :cond_1

    .line 124
    const/4 v0, 0x1

    .line 125
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v2, :cond_0

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 129
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 132
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 135
    :cond_2
    const/16 v6, 0x7d

    if-ne v4, v6, :cond_6

    .line 136
    array-length v6, p2

    if-ge v1, v6, :cond_5

    .line 138
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_4

    .line 140
    aget-object v5, p2, v1

    if-nez v5, :cond_3

    .line 141
    iget-object v5, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    .line 143
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 144
    :goto_1
    const/4 v1, -0x1

    goto :goto_2

    .line 139
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Missing argument index after a left curly brace"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Argument index out of bounds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_6
    const/16 v5, 0x30

    if-lt v4, v5, :cond_7

    const/16 v5, 0x39

    if-gt v4, v5, :cond_7

    .line 148
    mul-int/lit8 v5, v1, 0xa

    add-int/lit8 v6, v4, -0x30

    add-int/2addr v5, v6

    move v1, v5

    .line 120
    .end local v4    # "ch":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 147
    .restart local v4    # "ch":C
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\' while parsing argument index"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    .end local v3    # "i":I
    .end local v4    # "ch":C
    :cond_8
    if-gez v1, :cond_a

    .line 154
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/badlogic/gdx/utils/TextFormatter;->buffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v3, p1

    :goto_3
    return-object v3

    .line 152
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unmatched braces in the pattern."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->messageFormat:Ljava/text/MessageFormat;

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/TextFormatter;->replaceEscapeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TextFormatter;->messageFormat:Ljava/text/MessageFormat;

    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/TextFormatter;->simpleFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
