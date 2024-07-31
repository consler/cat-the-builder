.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/XmlReader$Element;
    }
.end annotation


# static fields
.field private static final _xml_actions:[B

.field private static final _xml_index_offsets:[S

.field private static final _xml_indicies:[B

.field private static final _xml_key_offsets:[B

.field private static final _xml_range_lengths:[B

.field private static final _xml_single_lengths:[B

.field private static final _xml_trans_actions:[B

.field private static final _xml_trans_keys:[C

.field private static final _xml_trans_targs:[B

.field static final xml_en_elementBody:I = 0xf

.field static final xml_en_main:I = 0x1

.field static final xml_error:I = 0x0

.field static final xml_first_final:I = 0x22

.field static final xml_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 346
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    .line 353
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_key_offsets_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    .line 362
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    .line 369
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    .line 376
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    .line 383
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    .line 393
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    .line 401
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    .line 408
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method private static init__xml_actions_0()[B
    .locals 1

    .line 343
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x2t
        0x0t
        0x6t
        0x2t
        0x1t
        0x4t
        0x2t
        0x2t
        0x4t
    .end array-data
.end method

.method private static init__xml_index_offsets_0()[S
    .locals 1

    .line 379
    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x4s
        0x9s
        0xes
        0x14s
        0x1as
        0x1es
        0x23s
        0x25s
        0x27s
        0x2cs
        0x30s
        0x34s
        0x36s
        0x38s
        0x3cs
        0x3es
        0x43s
        0x48s
        0x4es
        0x54s
        0x58s
        0x5ds
        0x5fs
        0x61s
        0x66s
        0x6as
        0x6es
        0x70s
        0x74s
        0x76s
        0x78s
        0x7as
        0x7cs
        0x7fs
    .end array-data
.end method

.method private static init__xml_indicies_0()[B
    .locals 1

    .line 386
    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x6t
        0x7t
        0x5t
        0x4t
        0x9t
        0xat
        0x1t
        0xbt
        0x9t
        0x8t
        0xdt
        0x1t
        0xet
        0x1t
        0xdt
        0xct
        0xft
        0x10t
        0xft
        0x1t
        0x10t
        0x11t
        0x12t
        0x10t
        0x1t
        0x14t
        0x13t
        0x16t
        0x15t
        0x9t
        0xat
        0xbt
        0x9t
        0x1t
        0x17t
        0x18t
        0x17t
        0x1t
        0x19t
        0xbt
        0x19t
        0x1t
        0x14t
        0x1at
        0x16t
        0x1bt
        0x1dt
        0x1et
        0x1dt
        0x1ct
        0x20t
        0x1ft
        0x1et
        0x22t
        0x1t
        0x1et
        0x21t
        0x24t
        0x25t
        0x26t
        0x24t
        0x23t
        0x28t
        0x29t
        0x1t
        0x2at
        0x28t
        0x27t
        0x2ct
        0x1t
        0x2dt
        0x1t
        0x2ct
        0x2bt
        0x2et
        0x2ft
        0x2et
        0x1t
        0x2ft
        0x30t
        0x31t
        0x2ft
        0x1t
        0x33t
        0x32t
        0x35t
        0x34t
        0x28t
        0x29t
        0x2at
        0x28t
        0x1t
        0x36t
        0x37t
        0x36t
        0x1t
        0x38t
        0x2at
        0x38t
        0x1t
        0x39t
        0x1t
        0x39t
        0x22t
        0x39t
        0x1t
        0x1t
        0x3at
        0x3bt
        0x3at
        0x33t
        0x3ct
        0x35t
        0x3dt
        0x3et
        0x3et
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_key_offsets_0()[B
    .locals 1

    .line 349
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x9t
        0xet
        0x14t
        0x1at
        0x1et
        0x23t
        0x24t
        0x25t
        0x2at
        0x2et
        0x32t
        0x33t
        0x34t
        0x38t
        0x39t
        0x3et
        0x43t
        0x49t
        0x4ft
        0x53t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x63t
        0x67t
        0x68t
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x73t
    .end array-data
.end method

.method private static init__xml_range_lengths_0()[B
    .locals 1

    .line 372
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_single_lengths_0()[B
    .locals 1

    .line 365
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_actions_0()[B
    .locals 1

    .line 404
    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xft
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x0t
        0x0t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_keys_0()[C
    .locals 1

    .line 356
    const/16 v0, 0x74

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x3cs
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x27s
        0x27s
        0x20s
        0x3cs
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x9s
        0xds
        0x3es
        0x3es
        0x27s
        0x27s
        0x20s
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method private static init__xml_trans_targs_0()[B
    .locals 1

    .line 396
    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0xbt
        0x22t
        0x5t
        0x4t
        0xbt
        0x22t
        0x5t
        0x6t
        0x7t
        0x6t
        0x7t
        0x8t
        0xdt
        0x9t
        0xat
        0x9t
        0xat
        0xct
        0x22t
        0xct
        0xet
        0xet
        0x10t
        0xft
        0x11t
        0x10t
        0x11t
        0x12t
        0x1et
        0x12t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x15t
        0x16t
        0x15t
        0x16t
        0x17t
        0x20t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1bt
        0x1ct
        0x1bt
        0x1dt
        0x1ft
        0x23t
        0x21t
        0x21t
        0x22t
    .end array-data
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method protected close()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 449
    return-void
.end method

.method protected entity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 432
    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<"

    return-object v0

    .line 433
    :cond_0
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ">"

    return-object v0

    .line 434
    :cond_1
    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&"

    return-object v0

    .line 435
    :cond_2
    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\'"

    return-object v0

    .line 436
    :cond_3
    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\""

    return-object v0

    .line 437
    :cond_4
    const-string v0, "#x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 420
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 421
    .local v0, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 422
    .local v1, "parent":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 424
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 425
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 81
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "input":Ljava/io/InputStream;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local p1    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 6
    .param p1, "reader"    # Ljava/io/Reader;

    .line 49
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    .line 50
    .local v0, "data":[C
    const/4 v1, 0x0

    .line 52
    .local v1, "offset":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 53
    .local v2, "length":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 61
    .end local v2    # "length":I
    invoke-virtual {p0, v0, v4, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    return-object v2

    .line 54
    .restart local v2    # "length":I
    :cond_0
    if-nez v2, :cond_1

    .line 55
    :try_start_1
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 56
    .local v3, "newData":[C
    array-length v5, v0

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    move-object v0, v3

    .line 58
    .end local v3    # "newData":[C
    goto :goto_1

    .line 59
    :cond_1
    add-int/2addr v1, v2

    .line 60
    .end local v2    # "length":I
    :goto_1
    goto :goto_0

    .line 65
    .end local v0    # "data":[C
    .end local v1    # "offset":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "reader":Ljava/io/Reader;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local p1    # "reader":Ljava/io/Reader;
    :goto_2
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 3
    .param p1, "xml"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 44
    .local v0, "data":[C
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 25
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .local v2, "p":I
    move/from16 v3, p3

    .line 90
    .local v3, "pe":I
    const/4 v4, 0x0

    .line 91
    .local v4, "s":I
    const/4 v5, 0x0

    .line 92
    .local v5, "attributeName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 96
    .local v6, "hasBody":Z
    const/4 v7, 0x1

    .line 102
    .local v7, "cs":I
    const/4 v8, 0x0

    .line 106
    .local v8, "_trans":I
    const/4 v9, 0x0

    .line 110
    .local v9, "_goto_targ":I
    :goto_0
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_0

    if-eq v9, v13, :cond_2

    move/from16 v21, v9

    if-eq v9, v12, :cond_20

    goto/16 :goto_15

    .line 112
    :cond_0
    if-ne v2, v3, :cond_1

    .line 113
    const/4 v9, 0x4

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    if-nez v7, :cond_2

    .line 117
    const/4 v9, 0x5

    .line 118
    goto :goto_0

    .line 123
    :cond_2
    sget-object v14, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    aget-byte v14, v14, v7

    .line 124
    .local v14, "_keys":I
    sget-object v15, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    aget-short v8, v15, v7

    .line 125
    sget-object v15, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    aget-byte v15, v15, v7

    .line 126
    .local v15, "_klen":I
    if-lez v15, :cond_6

    .line 127
    move/from16 v16, v14

    .line 129
    .local v16, "_lower":I
    add-int v17, v14, v15

    add-int/lit8 v17, v17, -0x1

    move/from16 v11, v16

    move/from16 v10, v17

    .line 131
    .end local v16    # "_lower":I
    .local v10, "_upper":I
    .local v11, "_lower":I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 143
    add-int/2addr v14, v15

    .line 144
    add-int/2addr v8, v15

    goto :goto_2

    .line 133
    :cond_3
    sub-int v17, v10, v11

    shr-int/lit8 v17, v17, 0x1

    add-int v17, v11, v17

    .line 134
    .local v17, "_mid":I
    aget-char v13, v1, v2

    sget-object v19, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v12, v19, v17

    if-ge v13, v12, :cond_4

    .line 135
    add-int/lit8 v10, v17, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_1

    .line 136
    :cond_4
    aget-char v12, v1, v2

    aget-char v13, v19, v17

    if-le v12, v13, :cond_5

    .line 137
    add-int/lit8 v11, v17, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_1

    .line 139
    :cond_5
    sub-int v12, v17, v14

    add-int/2addr v8, v12

    .line 140
    move/from16 v19, v4

    goto :goto_4

    .line 147
    .end local v10    # "_upper":I
    .end local v11    # "_lower":I
    .end local v17    # "_mid":I
    :cond_6
    :goto_2
    sget-object v10, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    aget-byte v15, v10, v7

    .line 148
    if-lez v15, :cond_a

    .line 149
    move v10, v14

    .line 151
    .local v10, "_lower":I
    shl-int/lit8 v11, v15, 0x1

    add-int/2addr v11, v14

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    .line 153
    .local v11, "_upper":I
    :goto_3
    if-ge v11, v10, :cond_7

    .line 165
    add-int/2addr v8, v15

    move/from16 v19, v4

    goto :goto_4

    .line 155
    :cond_7
    sub-int v12, v11, v10

    const/4 v13, 0x1

    shr-int/2addr v12, v13

    and-int/lit8 v12, v12, -0x2

    add-int/2addr v12, v10

    .line 156
    .local v12, "_mid":I
    aget-char v13, v1, v2

    sget-object v17, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    move/from16 v19, v4

    .end local v4    # "s":I
    .local v19, "s":I
    aget-char v4, v17, v12

    if-ge v13, v4, :cond_8

    .line 157
    add-int/lit8 v11, v12, -0x2

    move/from16 v4, v19

    goto :goto_3

    .line 158
    :cond_8
    aget-char v4, v1, v2

    add-int/lit8 v13, v12, 0x1

    aget-char v13, v17, v13

    if-le v4, v13, :cond_9

    .line 159
    add-int/lit8 v10, v12, 0x2

    move/from16 v4, v19

    goto :goto_3

    .line 161
    :cond_9
    sub-int v4, v12, v14

    const/4 v13, 0x1

    shr-int/2addr v4, v13

    add-int/2addr v8, v4

    .line 162
    goto :goto_4

    .line 148
    .end local v10    # "_lower":I
    .end local v11    # "_upper":I
    .end local v12    # "_mid":I
    .end local v19    # "s":I
    .restart local v4    # "s":I
    :cond_a
    move/from16 v19, v4

    .line 169
    .end local v4    # "s":I
    .restart local v19    # "s":I
    :goto_4
    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    aget-byte v8, v4, v8

    .line 170
    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    aget-byte v4, v4, v8

    .line 172
    .end local v7    # "cs":I
    .local v4, "cs":I
    sget-object v7, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v10, v7, v8

    if-eqz v10, :cond_1f

    .line 173
    aget-byte v7, v7, v8

    .line 174
    .local v7, "_acts":I
    sget-object v10, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v11, v7, 0x1

    .end local v7    # "_acts":I
    .local v11, "_acts":I
    aget-byte v7, v10, v7

    move v10, v7

    move v7, v6

    move-object v6, v5

    move/from16 v5, v19

    .line 175
    .end local v19    # "s":I
    .local v5, "s":I
    .local v6, "attributeName":Ljava/lang/String;
    .local v7, "hasBody":Z
    .local v10, "_nacts":I
    :goto_5
    add-int/lit8 v12, v10, -0x1

    .end local v10    # "_nacts":I
    .local v12, "_nacts":I
    if-lez v10, :cond_1e

    .line 176
    sget-object v10, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "_acts":I
    .local v13, "_acts":I
    aget-byte v10, v10, v11

    packed-switch v10, :pswitch_data_0

    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    const/4 v10, 0x2

    const/16 v18, 0x1

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .local v17, "cs":I
    .local v20, "_trans":I
    .local v21, "_goto_targ":I
    goto/16 :goto_13

    .line 266
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .restart local v4    # "cs":I
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    :pswitch_0
    move v10, v2

    .line 267
    .local v10, "end":I
    :goto_6
    if-eq v10, v5, :cond_c

    .line 268
    add-int/lit8 v11, v10, -0x1

    aget-char v11, v1, v11

    move/from16 v17, v4

    .end local v4    # "cs":I
    .restart local v17    # "cs":I
    const/16 v4, 0x9

    if-eq v11, v4, :cond_b

    const/16 v4, 0xa

    if-eq v11, v4, :cond_b

    const/16 v4, 0xd

    if-eq v11, v4, :cond_b

    const/16 v4, 0x20

    if-eq v11, v4, :cond_b

    .line 276
    goto :goto_7

    .line 273
    :cond_b
    add-int/lit8 v10, v10, -0x1

    .line 274
    move/from16 v4, v17

    goto :goto_6

    .line 267
    .end local v17    # "cs":I
    .restart local v4    # "cs":I
    :cond_c
    move/from16 v17, v4

    .line 278
    .end local v4    # "cs":I
    .restart local v17    # "cs":I
    :goto_7
    move v4, v5

    .line 279
    .local v4, "current":I
    const/4 v11, 0x0

    .line 280
    .local v11, "entityFound":Z
    :goto_8
    if-eq v4, v10, :cond_11

    .line 281
    add-int/lit8 v19, v4, 0x1

    .end local v4    # "current":I
    .local v19, "current":I
    aget-char v4, v1, v4

    move/from16 v20, v8

    .end local v8    # "_trans":I
    .restart local v20    # "_trans":I
    const/16 v8, 0x26

    if-eq v4, v8, :cond_d

    move/from16 v4, v19

    move/from16 v8, v20

    goto :goto_8

    .line 282
    :cond_d
    move/from16 v4, v19

    move/from16 v8, v19

    .line 283
    .end local v19    # "current":I
    .local v4, "entityStart":I
    .local v8, "current":I
    :goto_9
    if-eq v8, v10, :cond_10

    .line 284
    add-int/lit8 v19, v8, 0x1

    .end local v8    # "current":I
    .restart local v19    # "current":I
    aget-char v8, v1, v8

    move/from16 v21, v9

    .end local v9    # "_goto_targ":I
    .restart local v21    # "_goto_targ":I
    const/16 v9, 0x3b

    if-eq v8, v9, :cond_e

    move/from16 v8, v19

    move/from16 v9, v21

    goto :goto_9

    .line 285
    :cond_e
    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v9, v4, v5

    const/16 v18, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v1, v5, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 286
    new-instance v8, Ljava/lang/String;

    sub-int v9, v19, v4

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v1, v4, v9}, Ljava/lang/String;-><init>([CII)V

    .line 287
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "value":Ljava/lang/String;
    move/from16 v22, v4

    .end local v4    # "entityStart":I
    .local v22, "entityStart":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    move-object/from16 v23, v8

    if-eqz v9, :cond_f

    move-object v8, v9

    .end local v8    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    :cond_f
    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 289
    move/from16 v5, v19

    .line 290
    const/4 v4, 0x1

    .line 291
    .end local v11    # "entityFound":Z
    .local v4, "entityFound":Z
    move v11, v4

    move/from16 v4, v19

    goto :goto_a

    .line 283
    .end local v19    # "current":I
    .end local v21    # "_goto_targ":I
    .end local v22    # "entityStart":I
    .end local v23    # "name":Ljava/lang/String;
    .local v4, "entityStart":I
    .local v8, "current":I
    .local v9, "_goto_targ":I
    .restart local v11    # "entityFound":Z
    :cond_10
    move/from16 v22, v4

    move/from16 v21, v9

    const/16 v18, 0x1

    .end local v4    # "entityStart":I
    .end local v9    # "_goto_targ":I
    .restart local v21    # "_goto_targ":I
    .restart local v22    # "entityStart":I
    move v4, v8

    .line 293
    .end local v8    # "current":I
    .end local v22    # "entityStart":I
    .local v4, "current":I
    :goto_a
    move/from16 v8, v20

    move/from16 v9, v21

    goto :goto_8

    .line 294
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .local v8, "_trans":I
    .restart local v9    # "_goto_targ":I
    :cond_11
    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v18, 0x1

    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    if-eqz v11, :cond_13

    .line 295
    if-ge v5, v10, :cond_12

    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v9, v10, v5

    invoke-virtual {v8, v1, v5, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 296
    :cond_12
    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    .line 297
    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_b

    .line 299
    :cond_13
    new-instance v8, Ljava/lang/String;

    sub-int v9, v10, v5

    invoke-direct {v8, v1, v5, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    .line 301
    .end local v4    # "current":I
    .end local v10    # "end":I
    .end local v11    # "entityFound":Z
    :goto_b
    const/4 v10, 0x2

    goto/16 :goto_13

    .line 260
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .local v4, "cs":I
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    :pswitch_1
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v18, 0x1

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    new-instance v4, Ljava/lang/String;

    sub-int v8, v2, v5

    invoke-direct {v4, v1, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v6, v4}, Lcom/badlogic/gdx/utils/XmlReader;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v10, 0x2

    goto/16 :goto_13

    .line 254
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .restart local v4    # "cs":I
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    :pswitch_2
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v18, 0x1

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    new-instance v4, Ljava/lang/String;

    sub-int v8, v2, v5

    invoke-direct {v4, v1, v5, v8}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v4

    .line 256
    const/4 v10, 0x2

    goto/16 :goto_13

    .line 244
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .restart local v4    # "cs":I
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    :pswitch_3
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v18, 0x1

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    if-eqz v7, :cond_14

    .line 245
    const/16 v4, 0xf

    .line 246
    .end local v17    # "cs":I
    .restart local v4    # "cs":I
    const/4 v9, 0x2

    .line 247
    .end local v21    # "_goto_targ":I
    .restart local v9    # "_goto_targ":I
    move/from16 v8, v20

    move/from16 v24, v7

    move v7, v4

    move v4, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_0

    .line 244
    .end local v4    # "cs":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v21    # "_goto_targ":I
    :cond_14
    const/4 v10, 0x2

    goto/16 :goto_13

    .line 233
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .restart local v4    # "cs":I
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    :pswitch_4
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    .line 235
    const/16 v4, 0xf

    .line 236
    .end local v17    # "cs":I
    .restart local v4    # "cs":I
    const/4 v9, 0x2

    .line 237
    .end local v21    # "_goto_targ":I
    .restart local v9    # "_goto_targ":I
    move/from16 v24, v7

    move v7, v4

    move v4, v5

    move-object v5, v6

    move/from16 v6, v24

    goto/16 :goto_0

    .line 221
    .end local v20    # "_trans":I
    .restart local v8    # "_trans":I
    :pswitch_5
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    const/4 v4, 0x0

    .line 222
    .end local v7    # "hasBody":Z
    .local v4, "hasBody":Z
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    .line 224
    const/16 v7, 0xf

    .line 225
    .end local v17    # "cs":I
    .local v7, "cs":I
    const/4 v9, 0x2

    .line 226
    .end local v21    # "_goto_targ":I
    .restart local v9    # "_goto_targ":I
    move-object/from16 v24, v6

    move v6, v4

    move v4, v5

    move-object/from16 v5, v24

    goto/16 :goto_0

    .line 186
    .end local v20    # "_trans":I
    .local v4, "cs":I
    .local v7, "hasBody":Z
    .restart local v8    # "_trans":I
    :pswitch_6
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    const/16 v18, 0x1

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    aget-char v4, v1, v5

    .line 187
    .local v4, "c":C
    const/16 v8, 0x3f

    const/16 v9, 0x21

    if-eq v4, v8, :cond_16

    if-ne v4, v9, :cond_15

    goto :goto_c

    .line 214
    :cond_15
    const/4 v7, 0x1

    .line 215
    new-instance v8, Ljava/lang/String;

    sub-int v9, v2, v5

    invoke-direct {v8, v1, v5, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader;->open(Ljava/lang/String;)V

    .line 217
    .end local v4    # "c":C
    const/4 v10, 0x2

    goto/16 :goto_13

    .line 188
    .restart local v4    # "c":C
    :cond_16
    :goto_c
    add-int/lit8 v8, v5, 0x1

    aget-char v8, v1, v8

    const/16 v10, 0x5b

    if-ne v8, v10, :cond_19

    add-int/lit8 v8, v5, 0x2

    aget-char v8, v1, v8

    const/16 v9, 0x43

    if-ne v8, v9, :cond_19

    add-int/lit8 v8, v5, 0x3

    aget-char v8, v1, v8

    const/16 v9, 0x44

    if-ne v8, v9, :cond_19

    add-int/lit8 v8, v5, 0x4

    aget-char v8, v1, v8

    const/16 v9, 0x41

    if-ne v8, v9, :cond_19

    add-int/lit8 v8, v5, 0x5

    aget-char v8, v1, v8

    const/16 v11, 0x54

    if-ne v8, v11, :cond_19

    add-int/lit8 v8, v5, 0x6

    aget-char v8, v1, v8

    if-ne v8, v9, :cond_19

    add-int/lit8 v8, v5, 0x7

    aget-char v8, v1, v8

    if-ne v8, v10, :cond_19

    .line 195
    add-int/lit8 v8, v5, 0x8

    .line 196
    .end local v5    # "s":I
    .local v8, "s":I
    add-int/lit8 v2, v8, 0x2

    .line 197
    :goto_d
    add-int/lit8 v5, v2, -0x2

    aget-char v5, v1, v5

    const/16 v9, 0x5d

    if-ne v5, v9, :cond_18

    add-int/lit8 v5, v2, -0x1

    aget-char v5, v1, v5

    if-ne v5, v9, :cond_18

    aget-char v5, v1, v2

    const/16 v9, 0x3e

    if-eq v5, v9, :cond_17

    const/4 v10, 0x2

    goto :goto_e

    .line 199
    :cond_17
    new-instance v5, Ljava/lang/String;

    sub-int v9, v2, v8

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-direct {v5, v1, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v5, v8

    goto :goto_12

    .line 197
    :cond_18
    const/4 v10, 0x2

    .line 198
    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 200
    .end local v8    # "s":I
    .restart local v5    # "s":I
    :cond_19
    const/16 v8, 0x21

    if-ne v4, v8, :cond_1c

    add-int/lit8 v8, v5, 0x1

    aget-char v8, v1, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1c

    add-int/lit8 v8, v5, 0x2

    aget-char v8, v1, v8

    if-ne v8, v9, :cond_1c

    .line 201
    add-int/lit8 v2, v5, 0x3

    .line 202
    :goto_f
    aget-char v8, v1, v2

    if-ne v8, v9, :cond_1b

    add-int/lit8 v8, v2, 0x1

    aget-char v8, v1, v8

    if-ne v8, v9, :cond_1b

    add-int/lit8 v8, v2, 0x2

    aget-char v8, v1, v8

    const/16 v10, 0x3e

    if-eq v8, v10, :cond_1a

    goto :goto_10

    .line 204
    :cond_1a
    add-int/lit8 v2, v2, 0x2

    goto :goto_12

    .line 203
    :cond_1b
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 206
    :cond_1c
    :goto_11
    aget-char v8, v1, v2

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_1d

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 209
    :cond_1d
    :goto_12
    const/16 v8, 0xf

    .line 210
    .end local v17    # "cs":I
    .local v8, "cs":I
    const/4 v9, 0x2

    .line 211
    .end local v21    # "_goto_targ":I
    .restart local v9    # "_goto_targ":I
    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v20

    goto/16 :goto_0

    .line 180
    .end local v20    # "_trans":I
    .local v4, "cs":I
    .local v8, "_trans":I
    :pswitch_7
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    const/4 v10, 0x2

    const/16 v18, 0x1

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    move v5, v2

    .line 182
    nop

    .line 301
    :goto_13
    move v10, v12

    move v11, v13

    move/from16 v4, v17

    move/from16 v8, v20

    move/from16 v9, v21

    goto/16 :goto_5

    .line 175
    .end local v13    # "_acts":I
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .restart local v4    # "cs":I
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    .local v11, "_acts":I
    :cond_1e
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    move v4, v5

    move-object v5, v6

    move v6, v7

    move/from16 v7, v17

    goto :goto_14

    .line 172
    .end local v7    # "hasBody":Z
    .end local v11    # "_acts":I
    .end local v12    # "_nacts":I
    .end local v17    # "cs":I
    .end local v20    # "_trans":I
    .end local v21    # "_goto_targ":I
    .restart local v4    # "cs":I
    .local v5, "attributeName":Ljava/lang/String;
    .local v6, "hasBody":Z
    .restart local v8    # "_trans":I
    .restart local v9    # "_goto_targ":I
    .local v19, "s":I
    :cond_1f
    move/from16 v17, v4

    move/from16 v20, v8

    move/from16 v21, v9

    .end local v4    # "cs":I
    .end local v8    # "_trans":I
    .end local v9    # "_goto_targ":I
    .restart local v17    # "cs":I
    .restart local v20    # "_trans":I
    .restart local v21    # "_goto_targ":I
    move/from16 v7, v17

    move/from16 v4, v19

    .line 308
    .end local v14    # "_keys":I
    .end local v15    # "_klen":I
    .end local v17    # "cs":I
    .end local v19    # "s":I
    .end local v20    # "_trans":I
    .local v4, "s":I
    .local v7, "cs":I
    .restart local v8    # "_trans":I
    :cond_20
    :goto_14
    if-nez v7, :cond_21

    .line 309
    const/4 v9, 0x5

    .line 310
    .end local v21    # "_goto_targ":I
    .restart local v9    # "_goto_targ":I
    goto/16 :goto_0

    .line 312
    .end local v9    # "_goto_targ":I
    .restart local v21    # "_goto_targ":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    if-eq v2, v3, :cond_22

    .line 313
    const/4 v9, 0x1

    .line 314
    .end local v21    # "_goto_targ":I
    .restart local v9    # "_goto_targ":I
    goto/16 :goto_0

    .line 319
    .end local v9    # "_goto_targ":I
    .restart local v21    # "_goto_targ":I
    :cond_22
    :goto_15
    nop

    .line 325
    .end local v8    # "_trans":I
    .end local v21    # "_goto_targ":I
    if-ge v2, v3, :cond_25

    .line 326
    const/4 v8, 0x1

    .line 327
    .local v8, "lineNumber":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_16
    if-ge v9, v2, :cond_24

    .line 328
    aget-char v10, v1, v9

    const/16 v11, 0xa

    if-ne v10, v11, :cond_23

    add-int/lit8 v8, v8, 0x1

    .line 327
    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 329
    .end local v9    # "i":I
    :cond_24
    new-instance v9, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing XML on line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " near: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    sub-int v12, v3, v2

    .line 330
    const/16 v13, 0x20

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-direct {v11, v1, v2, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 331
    .end local v8    # "lineNumber":I
    :cond_25
    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v8, :cond_26

    .line 336
    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 337
    .local v8, "root":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 338
    return-object v8

    .line 332
    .end local v8    # "root":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_26
    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 333
    .local v8, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v9, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 334
    new-instance v9, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing XML, unclosed element: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected text(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "existing":Ljava/lang/String;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    .line 444
    return-void
.end method
