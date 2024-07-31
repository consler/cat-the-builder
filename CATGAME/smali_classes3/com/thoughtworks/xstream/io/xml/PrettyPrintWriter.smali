.class public Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "PrettyPrintWriter.java"


# static fields
.field private static final AMP:[C

.field private static final APOS:[C

.field private static final CLOSE:[C

.field private static final CR:[C

.field private static final GT:[C

.field private static final LT:[C

.field private static final NULL:[C

.field private static final QUOT:[C

.field public static XML_1_0:I

.field public static XML_1_1:I

.field public static XML_QUIRKS:I


# instance fields
.field protected depth:I

.field private final elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final lineIndenter:[C

.field private final mode:I

.field private newLine:Ljava/lang/String;

.field private readyForNewLine:Z

.field private tagInProgress:Z

.field private tagIsEmpty:Z

.field private final writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_0:I

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_1:I

    .line 68
    const-string v0, "&#x0;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->NULL:[C

    .line 69
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->AMP:[C

    .line 70
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->LT:[C

    .line 71
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->GT:[C

    .line 72
    const-string v0, "&#xd;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CR:[C

    .line 73
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->QUOT:[C

    .line 74
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->APOS:[C

    .line 75
    const-string v0, "</"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CLOSE:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[C)V

    .line 190
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

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    .line 186
    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 157
    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 165
    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "lineIndenter"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[C)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "lineIndenter"    # [C

    .line 127
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "lineIndenter"    # [C
    .param p4, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 104
    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "lineIndenter"    # [C
    .param p4, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;
    .param p5, "newLine"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p4}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 58
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 81
    new-instance v0, Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    .line 82
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->lineIndenter:[C

    .line 83
    iput-object p5, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->newLine:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    .line 85
    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-lt p2, v0, :cond_0

    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_1:I

    if-gt p2, v0, :cond_0

    .line 88
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid XML mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "lineIndenter"    # [C
    .param p4, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 113
    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 171
    sget v2, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    const/4 v0, 0x2

    new-array v3, v0, [C

    fill-array-data v3, :array_0

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    .line 172
    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\n"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 179
    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[C)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # Ljava/lang/String;
    .param p3, "newLine"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C

    .line 131
    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C
    .param p3, "newLine"    # Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C
    .param p3, "newLine"    # Ljava/lang/String;
    .param p4, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 96
    sget v2, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private finishTag()V
    .locals 2

    .line 327
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    .line 331
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->endOfLine()V

    .line 334
    :cond_1
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 335
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    .line 336
    return-void
.end method

.method private writeText(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_12

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 238
    .local v2, "c":C
    if-eqz v2, :cond_10

    const/16 v3, 0xd

    if-eq v2, v3, :cond_f

    const/16 v3, 0x22

    if-eq v2, v3, :cond_e

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_d

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_c

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x26

    if-eq v2, v4, :cond_1

    const/16 v4, 0x27

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->APOS:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 260
    goto/16 :goto_5

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->AMP:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 248
    goto/16 :goto_5

    .line 266
    :cond_2
    if-nez p2, :cond_3

    .line 267
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 268
    goto/16 :goto_5

    .line 271
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v4

    const-string v5, " in XML stream"

    const-string v6, "Invalid character 0x"

    if-eqz v4, :cond_6

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 272
    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-eq v3, v4, :cond_5

    .line 273
    const v3, 0xd7ff

    if-le v2, v3, :cond_5

    const v3, 0xe000

    if-lt v2, v3, :cond_4

    goto :goto_2

    .line 274
    :cond_4
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto/16 :goto_5

    .line 281
    :cond_6
    iget v4, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v7, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_0:I

    if-ne v4, v7, :cond_9

    .line 282
    if-lt v2, v3, :cond_8

    const/16 v3, 0xb

    if-eq v2, v3, :cond_8

    const/16 v3, 0xc

    if-eq v2, v3, :cond_8

    const/16 v3, 0xe

    if-eq v2, v3, :cond_8

    const/16 v3, 0xf

    if-lt v2, v3, :cond_7

    const/16 v3, 0x1f

    if-le v2, v3, :cond_8

    :cond_7
    goto :goto_3

    .line 287
    :cond_8
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " in XML 1.0 stream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    :cond_9
    :goto_3
    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-eq v3, v4, :cond_b

    .line 293
    const v3, 0xfffe

    if-eq v2, v3, :cond_a

    const v3, 0xffff

    if-eq v2, v3, :cond_a

    goto :goto_4

    .line 294
    :cond_a
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_b
    :goto_4
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "&#x"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto :goto_5

    .line 253
    :cond_c
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->GT:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 254
    goto :goto_5

    .line 250
    :cond_d
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->LT:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 251
    goto :goto_5

    .line 256
    :cond_e
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->QUOT:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 257
    goto :goto_5

    .line 262
    :cond_f
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CR:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 263
    goto :goto_5

    .line 240
    :cond_10
    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-ne v3, v4, :cond_11

    .line 241
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->NULL:[C

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 236
    .end local v2    # "c":C
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 243
    .restart local v2    # "c":C
    :cond_11
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "Invalid character 0x0 in XML stream"

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_12
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 219
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 221
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 222
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeAttributeValue(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 224
    return-void
.end method

.method public close()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->close()V

    .line 351
    return-void
.end method

.method public endNode()V
    .locals 3

    .line 308
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    .line 309
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 312
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    .line 313
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    .line 316
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v2, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CLOSE:[C

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 317
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 320
    :goto_0
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 321
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 324
    :cond_1
    return-void
.end method

.method protected endOfLine()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->getNewLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->lineIndenter:[C

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 347
    return-void
.end method

.method protected getNewLine()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 211
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    .line 212
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    .line 214
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "escapedName":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    .line 195
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    .line 196
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 197
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    .line 200
    iget v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    .line 201
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 202
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    .line 203
    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .line 206
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->startNode(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected writeAttributeValue(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Lcom/thoughtworks/xstream/core/util/QuickWriter;
    .param p2, "text"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method protected writeText(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Lcom/thoughtworks/xstream/core/util/QuickWriter;
    .param p2, "text"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Ljava/lang/String;Z)V

    .line 232
    return-void
.end method
