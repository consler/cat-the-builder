.class public Lcom/thoughtworks/xstream/io/json/JsonWriter;
.super Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;
    }
.end annotation


# instance fields
.field private depth:I

.field protected final format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

.field private newLineProposed:Z

.field protected final writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;

    .line 74
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0xa

    const/4 v4, 0x0

    aput-char v3, v2, v4

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v5, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 77
    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I

    .line 98
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "format"    # Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 133
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "format"    # Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;
    .param p4, "bufferSize"    # I

    .line 147
    invoke-virtual {p3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 148
    new-instance v0, Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-direct {v0, p1, p4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    .line 149
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 150
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "format"    # Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0xa

    const/4 v4, 0x0

    aput-char v3, v2, v4

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v5, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    .line 68
    invoke-direct {p0, p1, v4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # Ljava/lang/String;
    .param p3, "newLine"    # Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    .line 59
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C

    .line 51
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0xa

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v4

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v3, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C
    .param p3, "newLine"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    .line 42
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;I)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C
    .param p3, "newLine"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 84
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 85
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    .line 84
    invoke-direct {p0, p1, p4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 87
    return-void
.end method

.method private endNewLine()V
    .locals 2

    .line 249
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    if-lez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 256
    :cond_1
    :goto_0
    return-void
.end method

.method private startNewLine()V
    .locals 2

    .line 243
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    if-lez v0, :cond_0

    .line 244
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    .line 246
    :cond_0
    return-void
.end method

.method private writeNewLine()V
    .locals 3

    .line 259
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    .line 260
    .local v0, "depth":I
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getNewLine()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 261
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "depth":I
    .local v1, "depth":I
    if-lez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getLineIndenter()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    move v0, v1

    goto :goto_0

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    .line 265
    return-void
.end method

.method private writeText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 269
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 271
    .local v2, "c":C
    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 298
    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto :goto_1

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "hex":Ljava/lang/String;
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    .end local v3    # "hex":Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 290
    goto :goto_1

    .line 295
    :pswitch_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 296
    goto :goto_1

    .line 283
    :pswitch_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 284
    goto :goto_1

    .line 276
    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 277
    goto :goto_1

    .line 273
    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\\""

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 274
    goto :goto_1

    .line 292
    :cond_3
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 293
    goto :goto_1

    .line 286
    :cond_4
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 287
    nop

    .line 269
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 307
    .end local v1    # "i":I
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 180
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 184
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeText(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 189
    :cond_1
    return-void
.end method

.method protected addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    .line 195
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 198
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    const/16 v1, 0x22

    if-ne p2, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeText(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    if-ne p2, v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 205
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->close()V

    .line 159
    return-void
.end method

.method protected endArray()V
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->endNewLine()V

    .line 231
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method protected endObject()V
    .locals 2

    .line 238
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->endNewLine()V

    .line 239
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public flush()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 155
    return-void
.end method

.method protected nextElement()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 224
    return-void
.end method

.method protected startArray()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->startNewLine()V

    .line 216
    return-void
.end method

.method protected startObject()V
    .locals 2

    .line 169
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 173
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->startNewLine()V

    .line 174
    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    .line 162
    return-object p0
.end method
