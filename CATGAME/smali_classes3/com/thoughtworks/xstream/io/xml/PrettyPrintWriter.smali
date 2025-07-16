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

.field public static XML_1_0:I = 0x0

.field public static XML_1_1:I = 0x1

.field public static XML_QUIRKS:I = -0x1


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

    const-string v0, "&#x0;"

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->NULL:[C

    const-string v0, "&amp;"

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->AMP:[C

    const-string v0, "&lt;"

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->LT:[C

    const-string v0, "&gt;"

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->GT:[C

    const-string v0, "&#xd;"

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CR:[C

    const-string v0, "&quot;"

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->QUOT:[C

    const-string v0, "&apos;"

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->APOS:[C

    const-string v0, "</"

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CLOSE:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 189
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[C)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 185
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 156
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 164
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .locals 0

    .line 145
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[C)V
    .locals 1

    .line 127
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0, p4}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 58
    new-instance p4, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v0, 0x10

    invoke-direct {p4, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p4, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 81
    new-instance p4, Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-direct {p4, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;)V

    iput-object p4, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    .line 82
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->lineIndenter:[C

    .line 83
    iput-object p5, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->newLine:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    .line 85
    sget p1, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-lt p2, p1, :cond_0

    sget p1, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_1:I

    if-gt p2, p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a valid XML mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 6

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6

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

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 178
    fill-array-data v0, :array_0

    const-string v1, "\n"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 1

    .line 131
    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 6

    .line 96
    sget v2, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

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

    :cond_0
    const/4 v0, 0x0

    .line 330
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

    return-void
.end method

.method private writeText(Ljava/lang/String;Z)V
    .locals 8

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_11

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_f

    const/16 v3, 0xd

    if-eq v2, v3, :cond_e

    const/16 v3, 0x22

    if-eq v2, v3, :cond_d

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_c

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_b

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
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->APOS:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto/16 :goto_5

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->AMP:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto/16 :goto_5

    :cond_2
    if-nez p2, :cond_3

    .line 267
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

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

    const v3, 0xd7ff

    if-le v2, v3, :cond_5

    const v3, 0xe000

    if-lt v2, v3, :cond_4

    goto :goto_2

    .line 274
    :cond_4
    new-instance p1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw p1

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

    if-ne v4, v7, :cond_8

    if-lt v2, v3, :cond_7

    const/16 v3, 0xb

    if-eq v2, v3, :cond_7

    const/16 v3, 0xc

    if-eq v2, v3, :cond_7

    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xf

    if-lt v2, v3, :cond_8

    const/16 v3, 0x1f

    if-le v2, v3, :cond_7

    goto :goto_3

    .line 287
    :cond_7
    new-instance p1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " in XML 1.0 stream"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_8
    :goto_3
    sget v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-eq v4, v3, :cond_a

    const v3, 0xfffe

    if-eq v2, v3, :cond_9

    const v3, 0xffff

    if-eq v2, v3, :cond_9

    goto :goto_4

    .line 294
    :cond_9
    new-instance p1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "&#x"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto :goto_5

    .line 253
    :cond_b
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->GT:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_5

    .line 250
    :cond_c
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->LT:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_5

    .line 256
    :cond_d
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->QUOT:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_5

    .line 262
    :cond_e
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CR:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_5

    .line 240
    :cond_f
    iget v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-ne v2, v3, :cond_10

    .line 241
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->NULL:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 243
    :cond_10
    new-instance p1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string p2, "Invalid character 0x0 in XML stream"

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 219
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 221
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 222
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeAttributeValue(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->close()V

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

    const/4 v0, 0x0

    .line 311
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

    const/4 v0, 0x0

    .line 340
    :goto_0
    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->lineIndenter:[C

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

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

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 211
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    .line 212
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    .line 214
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 2

    .line 193
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    .line 195
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    .line 196
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 197
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    .line 200
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    .line 201
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    .line 202
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->startNode(Ljava/lang/String;)V

    return-void
.end method

.method protected writeAttributeValue(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 227
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Ljava/lang/String;Z)V

    return-void
.end method

.method protected writeText(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 231
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Ljava/lang/String;Z)V

    return-void
.end method
