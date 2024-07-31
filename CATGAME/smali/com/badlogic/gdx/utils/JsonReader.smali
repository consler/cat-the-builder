.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_indicies:[B

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x17

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x5

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x23

.field static final json_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonValue;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChild:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 569
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 576
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 588
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 595
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 602
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 609
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 621
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    .line 629
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 637
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 644
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 657
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "child"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 662
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_0

    .line 664
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 665
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 666
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 667
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    .line 672
    .local v0, "last":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 673
    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 675
    .end local v0    # "last":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 679
    :goto_2
    return-void
.end method

.method private static init__json_actions_0()[B
    .locals 1

    .line 566
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
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
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .locals 1

    .line 640
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .locals 1

    .line 605
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method private static init__json_indicies_0()[B
    .locals 1

    .line 612
    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1dt
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x22t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x37t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3ct
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .locals 1

    .line 572
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .locals 1

    .line 598
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .locals 1

    .line 591
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .locals 1

    .line 632
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .locals 1

    .line 579
    const/16 v0, 0xb9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .locals 1

    .line 624
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 720
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 721
    .local v0, "length":I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 722
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_9

    .line 723
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 724
    .local v2, "c":C
    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    .line 725
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 726
    move v2, v3

    goto :goto_0

    .line 728
    :cond_0
    if-ne v3, v0, :cond_1

    goto/16 :goto_2

    .line 729
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 730
    const/16 v3, 0x75

    if-ne v2, v3, :cond_2

    .line 731
    add-int/lit8 v3, v5, 0x4

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 732
    add-int/lit8 v3, v5, 0x4

    .line 733
    .end local v5    # "i":I
    .restart local v3    # "i":I
    move v2, v3

    goto :goto_0

    .line 735
    .end local v3    # "i":I
    .restart local v5    # "i":I
    :cond_2
    const/16 v3, 0x22

    if-eq v2, v3, :cond_8

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_8

    const/16 v3, 0x62

    if-eq v2, v3, :cond_7

    const/16 v3, 0x66

    if-eq v2, v3, :cond_6

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x72

    if-eq v2, v3, :cond_4

    const/16 v3, 0x74

    if-ne v2, v3, :cond_3

    .line 753
    const/16 v2, 0x9

    .line 754
    goto :goto_1

    .line 756
    :cond_3
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal escaped character: \\"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 750
    :cond_4
    const/16 v2, 0xd

    .line 751
    goto :goto_1

    .line 747
    :cond_5
    const/16 v2, 0xa

    .line 748
    goto :goto_1

    .line 744
    :cond_6
    const/16 v2, 0xc

    .line 745
    goto :goto_1

    .line 741
    :cond_7
    const/16 v2, 0x8

    .line 742
    goto :goto_1

    .line 739
    :cond_8
    nop

    .line 758
    :goto_1
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 759
    .end local v2    # "c":C
    move v2, v5

    goto :goto_0

    .line 760
    .end local v5    # "i":I
    :cond_9
    :goto_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 716
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 717
    return-void
.end method

.method protected number(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 708
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 709
    return-void
.end method

.method protected number(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 712
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 713
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 76
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
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

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "input":Ljava/io/InputStream;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local p1    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 6
    .param p1, "reader"    # Ljava/io/Reader;

    .line 44
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    .line 45
    .local v0, "data":[C
    const/4 v1, 0x0

    .line 47
    .local v1, "offset":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 48
    .local v2, "length":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 56
    .end local v2    # "length":I
    invoke-virtual {p0, v0, v4, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
    return-object v2

    .line 49
    .restart local v2    # "length":I
    :cond_0
    if-nez v2, :cond_1

    .line 50
    :try_start_1
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 51
    .local v3, "newData":[C
    array-length v5, v0

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    move-object v0, v3

    .line 53
    .end local v3    # "newData":[C
    goto :goto_1

    .line 54
    :cond_1
    add-int/2addr v1, v2

    .line 55
    .end local v2    # "length":I
    :goto_1
    goto :goto_0

    .line 60
    .end local v0    # "data":[C
    .end local v1    # "offset":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "reader":Ljava/io/Reader;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local p1    # "reader":Ljava/io/Reader;
    :goto_2
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 39
    .local v0, "data":[C
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 44
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .local v0, "p":I
    move/from16 v3, p3

    .local v3, "pe":I
    move v4, v3

    .local v4, "eof":I
    const/4 v5, 0x0

    .line 84
    .local v5, "top":I
    const/4 v6, 0x4

    new-array v7, v6, [I

    .line 86
    .local v7, "stack":[I
    const/4 v8, 0x0

    .line 87
    .local v8, "s":I
    new-instance v9, Lcom/badlogic/gdx/utils/Array;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 88
    .local v9, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "needsUnescape":Z
    const/4 v11, 0x0

    .local v11, "stringIsName":Z
    const/4 v12, 0x0

    .line 89
    .local v12, "stringIsUnquoted":Z
    const/4 v13, 0x0

    .line 91
    .local v13, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const/4 v14, 0x0

    .line 92
    .local v14, "debug":Z
    if-eqz v14, :cond_0

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/io/PrintStream;->println()V

    .line 98
    :cond_0
    const/4 v15, 0x1

    .line 99
    .local v15, "cs":I
    const/4 v5, 0x0

    .line 105
    const/16 v16, 0x0

    .line 109
    .local v16, "_trans":I
    const/16 v17, 0x0

    move/from16 v6, v17

    move/from16 v43, v5

    move v5, v0

    move v0, v15

    move v15, v12

    move v12, v11

    move v11, v10

    move v10, v8

    move-object v8, v7

    move/from16 v7, v43

    .line 113
    .local v0, "cs":I
    .local v5, "p":I
    .local v6, "_goto_targ":I
    .local v7, "top":I
    .local v8, "stack":[I
    .local v10, "s":I
    .local v11, "needsUnescape":Z
    .local v12, "stringIsName":Z
    .local v15, "stringIsUnquoted":Z
    :goto_0
    move/from16 v18, v10

    .end local v10    # "s":I
    .local v18, "s":I
    const-string v10, "=true"

    move/from16 v20, v11

    .end local v11    # "needsUnescape":Z
    .local v20, "needsUnescape":Z
    const-string v11, "null"

    move/from16 v21, v12

    .end local v12    # "stringIsName":Z
    .local v21, "stringIsName":Z
    const-string v12, "string: "

    move-object/from16 v22, v13

    .end local v13    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .local v22, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const-string v13, "false"

    move/from16 v23, v15

    .end local v15    # "stringIsUnquoted":Z
    .local v23, "stringIsUnquoted":Z
    const-string v15, "name: "

    move-object/from16 v24, v12

    const-string/jumbo v12, "true"

    move-object/from16 v25, v11

    const-string v11, "double: "

    move-object/from16 v26, v11

    const-string v11, "boolean: "

    move-object/from16 v27, v13

    const-string v13, "="

    move-object/from16 v28, v13

    const/4 v13, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v13, :cond_3

    const/4 v13, 0x2

    if-eq v6, v13, :cond_2

    const/4 v13, 0x4

    move/from16 v37, v4

    move/from16 v32, v6

    if-eq v6, v13, :cond_1

    move/from16 v27, v7

    move-object/from16 v38, v8

    move-object/from16 v25, v9

    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    goto/16 :goto_3a

    :cond_1
    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move/from16 v10, v18

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move v4, v0

    move/from16 v27, v7

    move-object/from16 v7, v24

    goto/16 :goto_2b

    :cond_2
    const/4 v13, 0x4

    move/from16 v35, v3

    move/from16 v37, v4

    move/from16 v32, v6

    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move/from16 v10, v18

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v27, v7

    move-object/from16 v7, v24

    goto/16 :goto_2a

    :cond_3
    const/4 v13, 0x4

    goto :goto_1

    .line 115
    :cond_4
    const/4 v13, 0x4

    if-ne v5, v3, :cond_5

    .line 116
    const/4 v6, 0x4

    .line 117
    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    goto/16 :goto_0

    .line 119
    :cond_5
    if-nez v0, :cond_6

    .line 120
    const/4 v6, 0x5

    .line 121
    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    goto/16 :goto_0

    .line 126
    :cond_6
    :goto_1
    :try_start_0
    sget-object v17, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v17, v17, v0

    .line 127
    .local v17, "_keys":I
    sget-object v31, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v31, v31, v0

    move/from16 v16, v31

    .line 128
    sget-object v31, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v31, v31, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2a

    .line 129
    .local v31, "_klen":I
    if-lez v31, :cond_a

    .line 130
    move/from16 v32, v17

    .line 132
    .local v32, "_lower":I
    add-int v33, v17, v31

    const/16 v30, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v13, v32

    move/from16 v32, v6

    move/from16 v6, v33

    .line 134
    .local v6, "_upper":I
    .local v13, "_lower":I
    .local v32, "_goto_targ":I
    :goto_2
    if-ge v6, v13, :cond_7

    .line 146
    add-int v17, v17, v31

    .line 147
    add-int v16, v16, v31

    goto :goto_3

    .line 136
    :cond_7
    sub-int v33, v6, v13

    const/16 v30, 0x1

    shr-int/lit8 v33, v33, 0x1

    add-int v33, v13, v33

    .line 137
    .local v33, "_mid":I
    move/from16 v34, v6

    .end local v6    # "_upper":I
    .local v34, "_upper":I
    :try_start_1
    aget-char v6, v2, v5

    sget-object v35, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v36, v13

    .end local v13    # "_lower":I
    .local v36, "_lower":I
    aget-char v13, v35, v33

    if-ge v6, v13, :cond_8

    .line 138
    add-int/lit8 v6, v33, -0x1

    move/from16 v13, v36

    .end local v34    # "_upper":I
    .restart local v6    # "_upper":I
    goto :goto_2

    .line 139
    .end local v6    # "_upper":I
    .restart local v34    # "_upper":I
    :cond_8
    aget-char v6, v2, v5

    sget-object v13, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v13, v13, v33
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-le v6, v13, :cond_9

    .line 140
    add-int/lit8 v13, v33, 0x1

    move/from16 v6, v34

    .end local v36    # "_lower":I
    .restart local v13    # "_lower":I
    goto :goto_2

    .line 142
    .end local v13    # "_lower":I
    .restart local v36    # "_lower":I
    :cond_9
    sub-int v6, v33, v17

    add-int v16, v16, v6

    .line 143
    move/from16 v34, v0

    goto :goto_5

    .line 535
    .end local v0    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v33    # "_mid":I
    .end local v34    # "_upper":I
    .end local v36    # "_lower":I
    :catch_0
    move-exception v0

    move/from16 v37, v4

    move-object/from16 v25, v9

    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    goto/16 :goto_3b

    .line 129
    .restart local v0    # "cs":I
    .local v6, "_goto_targ":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v31    # "_klen":I
    :cond_a
    move/from16 v32, v6

    .line 150
    .end local v6    # "_goto_targ":I
    .restart local v32    # "_goto_targ":I
    :goto_3
    :try_start_2
    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v6, v6, v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2a

    move/from16 v31, v6

    .line 151
    if-lez v31, :cond_e

    .line 152
    move/from16 v6, v17

    .line 154
    .local v6, "_lower":I
    shl-int/lit8 v13, v31, 0x1

    add-int v13, v17, v13

    const/16 v29, 0x2

    add-int/lit8 v13, v13, -0x2

    .line 156
    .local v13, "_upper":I
    :goto_4
    if-ge v13, v6, :cond_b

    .line 168
    add-int v16, v16, v31

    move/from16 v34, v0

    goto :goto_5

    .line 158
    :cond_b
    sub-int v33, v13, v6

    const/16 v30, 0x1

    shr-int/lit8 v33, v33, 0x1

    and-int/lit8 v33, v33, -0x2

    add-int v33, v6, v33

    .line 159
    .restart local v33    # "_mid":I
    move/from16 v34, v0

    .end local v0    # "cs":I
    .local v34, "cs":I
    :try_start_3
    aget-char v0, v2, v5

    sget-object v35, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v36, v6

    .end local v6    # "_lower":I
    .restart local v36    # "_lower":I
    aget-char v6, v35, v33

    if-ge v0, v6, :cond_c

    .line 160
    add-int/lit8 v13, v33, -0x2

    move/from16 v0, v34

    move/from16 v6, v36

    goto :goto_4

    .line 161
    :cond_c
    aget-char v0, v2, v5

    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v35, v33, 0x1

    aget-char v6, v6, v35
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-le v0, v6, :cond_d

    .line 162
    add-int/lit8 v6, v33, 0x2

    move/from16 v0, v34

    .end local v36    # "_lower":I
    .restart local v6    # "_lower":I
    goto :goto_4

    .line 164
    .end local v6    # "_lower":I
    .restart local v36    # "_lower":I
    :cond_d
    sub-int v0, v33, v17

    const/4 v6, 0x1

    shr-int/2addr v0, v6

    add-int v16, v16, v0

    .line 165
    goto :goto_5

    .line 151
    .end local v13    # "_upper":I
    .end local v33    # "_mid":I
    .end local v34    # "cs":I
    .end local v36    # "_lower":I
    .restart local v0    # "cs":I
    :cond_e
    move/from16 v34, v0

    .line 172
    .end local v0    # "cs":I
    .restart local v34    # "cs":I
    :goto_5
    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    aget-byte v0, v0, v16

    move/from16 v16, v0

    .line 173
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v0, v0, v16

    move v6, v0

    .line 175
    .end local v34    # "cs":I
    .local v6, "cs":I
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v0, v16
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2a

    if-eqz v0, :cond_49

    .line 176
    :try_start_5
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v0, v16

    .line 177
    .local v0, "_acts":I
    sget-object v13, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v33, v0, 0x1

    .end local v0    # "_acts":I
    .local v33, "_acts":I
    aget-byte v0, v13, v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1a

    move/from16 v13, v18

    .line 178
    .end local v18    # "s":I
    .local v0, "_nacts":I
    .local v13, "s":I
    :goto_6
    add-int/lit8 v18, v0, -0x1

    .end local v0    # "_nacts":I
    .local v18, "_nacts":I
    if-lez v0, :cond_48

    .line 179
    :try_start_6
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v34, v33, 0x1

    .end local v33    # "_acts":I
    .local v34, "_acts":I
    aget-byte v0, v0, v33
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_19

    move/from16 v35, v3

    .end local v3    # "pe":I
    .local v35, "pe":I
    packed-switch v0, :pswitch_data_0

    move/from16 v37, v4

    move/from16 v36, v6

    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move/from16 v39, v13

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v7, v24

    .end local v4    # "eof":I
    .end local v5    # "p":I
    .end local v6    # "cs":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .end local v13    # "s":I
    .local v27, "top":I
    .local v28, "p":I
    .local v36, "cs":I
    .local v37, "eof":I
    .local v38, "stack":[I
    .local v39, "s":I
    goto/16 :goto_29

    .line 405
    .end local v27    # "top":I
    .end local v28    # "p":I
    .end local v36    # "cs":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .end local v39    # "s":I
    .restart local v4    # "eof":I
    .restart local v5    # "p":I
    .restart local v6    # "cs":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v13    # "s":I
    :pswitch_0
    if-eqz v14, :cond_f

    :try_start_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "quotedChars"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 406
    :cond_f
    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 407
    .end local v13    # "s":I
    .local v3, "s":I
    const/4 v0, 0x0

    .end local v20    # "needsUnescape":Z
    .local v0, "needsUnescape":Z
    move v13, v0

    .line 410
    .end local v0    # "needsUnescape":Z
    .local v13, "needsUnescape":Z
    :goto_7
    :try_start_8
    aget-char v0, v2, v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    move/from16 v33, v3

    .end local v3    # "s":I
    .local v33, "s":I
    const/16 v3, 0x22

    if-eq v0, v3, :cond_12

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_10

    goto :goto_8

    .line 412
    :cond_10
    const/4 v13, 0x1

    .line 413
    add-int/lit8 v5, v5, 0x1

    .line 414
    nop

    .line 419
    :goto_8
    const/4 v3, 0x1

    add-int/2addr v5, v3

    .line 420
    if-ne v5, v4, :cond_11

    move/from16 v20, v13

    goto :goto_9

    :cond_11
    move/from16 v3, v33

    goto :goto_7

    .line 416
    :cond_12
    move/from16 v20, v13

    .line 422
    .end local v13    # "needsUnescape":Z
    .restart local v20    # "needsUnescape":Z
    :goto_9
    add-int/lit8 v5, v5, -0x1

    move/from16 v37, v4

    move/from16 v36, v6

    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v13, v33

    move/from16 v27, v7

    move-object/from16 v7, v24

    goto/16 :goto_29

    .line 535
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v20    # "needsUnescape":Z
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v33    # "s":I
    .end local v34    # "_acts":I
    .restart local v3    # "s":I
    .restart local v13    # "needsUnescape":Z
    :catch_1
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move-object/from16 v25, v9

    move v11, v13

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v10, v33

    move/from16 v3, v35

    .end local v3    # "s":I
    .restart local v33    # "s":I
    goto/16 :goto_3b

    .line 348
    .end local v33    # "s":I
    .restart local v6    # "cs":I
    .local v13, "s":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v20    # "needsUnescape":Z
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :pswitch_1
    if-eqz v14, :cond_13

    :try_start_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "unquotedChars"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_a

    .line 535
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    :catch_2
    move-exception v0

    move/from16 v37, v4

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    goto/16 :goto_3b

    .line 349
    .restart local v6    # "cs":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :cond_13
    :goto_a
    move v3, v5

    .line 350
    .end local v13    # "s":I
    .restart local v3    # "s":I
    const/4 v0, 0x0

    .line 351
    .end local v20    # "needsUnescape":Z
    .restart local v0    # "needsUnescape":Z
    const/4 v13, 0x1

    .line 352
    .end local v23    # "stringIsUnquoted":Z
    .local v13, "stringIsUnquoted":Z
    move/from16 v20, v0

    .end local v0    # "needsUnescape":Z
    .restart local v20    # "needsUnescape":Z
    if-eqz v21, :cond_1d

    .line 355
    :goto_b
    :try_start_a
    aget-char v0, v2, v5
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    move/from16 v38, v3

    const/16 v3, 0xa

    .end local v3    # "s":I
    .local v38, "s":I
    if-eq v0, v3, :cond_1c

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1c

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_16

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_15

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_14

    goto :goto_c

    .line 357
    :cond_14
    const/4 v0, 0x1

    .line 358
    .end local v20    # "needsUnescape":Z
    .restart local v0    # "needsUnescape":Z
    move/from16 v20, v0

    goto :goto_c

    .line 355
    .end local v0    # "needsUnescape":Z
    .restart local v20    # "needsUnescape":Z
    :cond_15
    move/from16 v39, v13

    goto :goto_e

    .line 360
    :cond_16
    add-int/lit8 v0, v5, 0x1

    if-ne v0, v4, :cond_17

    goto :goto_c

    .line 361
    :cond_17
    add-int/lit8 v0, v5, 0x1

    :try_start_b
    aget-char v0, v2, v0

    .line 362
    .local v0, "c":C
    const/16 v3, 0x2f

    if-eq v0, v3, :cond_1b

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_18

    move/from16 v39, v13

    goto/16 :goto_10

    .line 369
    .end local v0    # "c":C
    :cond_18
    :goto_c
    if-eqz v14, :cond_19

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    move/from16 v39, v13

    .end local v13    # "stringIsUnquoted":Z
    .local v39, "stringIsUnquoted":Z
    :try_start_c
    const-string/jumbo v13, "unquotedChar (name): \'"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v13, v2, v5

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 535
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v39    # "stringIsUnquoted":Z
    .restart local v13    # "stringIsUnquoted":Z
    :catch_3
    move-exception v0

    move/from16 v39, v13

    move/from16 v37, v4

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v3, v35

    move/from16 v10, v38

    move/from16 v15, v39

    .end local v13    # "stringIsUnquoted":Z
    .restart local v39    # "stringIsUnquoted":Z
    goto/16 :goto_3b

    .line 369
    .end local v39    # "stringIsUnquoted":Z
    .restart local v6    # "cs":I
    .restart local v13    # "stringIsUnquoted":Z
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :cond_19
    move/from16 v39, v13

    .line 370
    .end local v13    # "stringIsUnquoted":Z
    .restart local v39    # "stringIsUnquoted":Z
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 371
    if-ne v5, v4, :cond_1a

    goto/16 :goto_10

    :cond_1a
    move/from16 v3, v38

    move/from16 v13, v39

    goto :goto_b

    .line 362
    .end local v39    # "stringIsUnquoted":Z
    .restart local v0    # "c":C
    .restart local v13    # "stringIsUnquoted":Z
    :cond_1b
    move/from16 v39, v13

    .end local v13    # "stringIsUnquoted":Z
    .restart local v39    # "stringIsUnquoted":Z
    goto/16 :goto_10

    .line 355
    .end local v0    # "c":C
    .end local v39    # "stringIsUnquoted":Z
    .restart local v13    # "stringIsUnquoted":Z
    :cond_1c
    move/from16 v39, v13

    .line 367
    .end local v13    # "stringIsUnquoted":Z
    .restart local v39    # "stringIsUnquoted":Z
    :goto_e
    goto/16 :goto_10

    .line 535
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v38    # "s":I
    .end local v39    # "stringIsUnquoted":Z
    .restart local v3    # "s":I
    .restart local v13    # "stringIsUnquoted":Z
    :catch_4
    move-exception v0

    move/from16 v38, v3

    move/from16 v39, v13

    move/from16 v37, v4

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v3, v35

    move/from16 v10, v38

    move/from16 v15, v39

    .end local v3    # "s":I
    .end local v13    # "stringIsUnquoted":Z
    .restart local v38    # "s":I
    .restart local v39    # "stringIsUnquoted":Z
    goto/16 :goto_3b

    .line 352
    .end local v38    # "s":I
    .end local v39    # "stringIsUnquoted":Z
    .restart local v3    # "s":I
    .restart local v6    # "cs":I
    .restart local v13    # "stringIsUnquoted":Z
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :cond_1d
    move/from16 v38, v3

    move/from16 v39, v13

    .line 376
    .end local v3    # "s":I
    .end local v13    # "stringIsUnquoted":Z
    .restart local v38    # "s":I
    .restart local v39    # "stringIsUnquoted":Z
    :cond_1e
    aget-char v0, v2, v5

    const/16 v3, 0xa

    if-eq v0, v3, :cond_24

    const/16 v3, 0xd

    if-eq v0, v3, :cond_24

    const/16 v13, 0x2c

    if-eq v0, v13, :cond_24

    const/16 v13, 0x2f

    if-eq v0, v13, :cond_20

    const/16 v13, 0x7d

    if-eq v0, v13, :cond_24

    const/16 v13, 0x5c

    if-eq v0, v13, :cond_1f

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_24

    goto :goto_f

    .line 378
    :cond_1f
    const/4 v0, 0x1

    .line 379
    .end local v20    # "needsUnescape":Z
    .local v0, "needsUnescape":Z
    move/from16 v20, v0

    goto :goto_f

    .line 381
    .end local v0    # "needsUnescape":Z
    .restart local v20    # "needsUnescape":Z
    :cond_20
    const/16 v13, 0x5c

    add-int/lit8 v0, v5, 0x1

    if-ne v0, v4, :cond_21

    goto :goto_f

    .line 382
    :cond_21
    add-int/lit8 v0, v5, 0x1

    aget-char v0, v2, v0

    .line 383
    .local v0, "c":C
    const/16 v3, 0x2f

    if-eq v0, v3, :cond_25

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_22

    goto :goto_10

    .line 392
    .end local v0    # "c":C
    :cond_22
    :goto_f
    if-eqz v14, :cond_23

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unquotedChar (value): \'"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v13, v2, v5

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    :cond_23
    add-int/lit8 v5, v5, 0x1

    .line 394
    if-ne v5, v4, :cond_1e

    goto :goto_10

    .line 390
    :cond_24
    nop

    .line 397
    :cond_25
    :goto_10
    add-int/lit8 v5, v5, -0x1

    .line 398
    :goto_11
    aget-char v0, v2, v5

    invoke-static {v0}, Ljava/lang/Character;->isSpace(C)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    if-eqz v0, :cond_26

    .line 399
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    .line 398
    :cond_26
    move/from16 v37, v4

    move/from16 v36, v6

    move-object v6, v10

    move-object/from16 v41, v11

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v13, v38

    move/from16 v23, v39

    move/from16 v27, v7

    move-object/from16 v38, v8

    move-object/from16 v7, v24

    goto/16 :goto_29

    .line 535
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    :catch_5
    move-exception v0

    move/from16 v37, v4

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v3, v35

    move/from16 v10, v38

    move/from16 v15, v39

    goto/16 :goto_3b

    .line 332
    .end local v38    # "s":I
    .end local v39    # "stringIsUnquoted":Z
    .restart local v6    # "cs":I
    .local v13, "s":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v23    # "stringIsUnquoted":Z
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :pswitch_2
    add-int/lit8 v0, v5, -0x1

    .line 333
    .local v0, "start":I
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "p":I
    .local v3, "p":I
    :try_start_d
    aget-char v5, v2, v5
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7

    move/from16 v36, v3

    const/16 v3, 0x2f

    .end local v3    # "p":I
    .local v36, "p":I
    if-ne v5, v3, :cond_29

    move/from16 v5, v36

    .line 334
    .end local v36    # "p":I
    .restart local v5    # "p":I
    :goto_12
    if-eq v5, v4, :cond_27

    :try_start_e
    aget-char v3, v2, v5

    move-object/from16 v38, v10

    const/16 v10, 0xa

    if-eq v3, v10, :cond_28

    .line 335
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v38

    goto :goto_12

    .line 334
    :cond_27
    move-object/from16 v38, v10

    .line 336
    :cond_28
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    .line 333
    .end local v5    # "p":I
    .restart local v36    # "p":I
    :cond_29
    move-object/from16 v38, v10

    move/from16 v5, v36

    .line 338
    .end local v36    # "p":I
    .restart local v5    # "p":I
    :goto_13
    add-int/lit8 v3, v5, 0x1

    if-ge v3, v4, :cond_2b

    aget-char v3, v2, v5
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    const/16 v10, 0x2a

    if-ne v3, v10, :cond_2a

    goto :goto_14

    :cond_2a
    const/16 v10, 0x2f

    goto :goto_15

    :cond_2b
    const/16 v10, 0x2a

    :goto_14
    add-int/lit8 v3, v5, 0x1

    :try_start_f
    aget-char v3, v2, v3

    const/16 v10, 0x2f

    if-eq v3, v10, :cond_2c

    .line 339
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 340
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    .line 342
    :goto_16
    if-eqz v14, :cond_2d

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    move/from16 v37, v4

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    :try_start_10
    const-string v4, "comment "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v39, v11

    sub-int v11, v5, v0

    invoke-direct {v4, v2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17

    .end local v37    # "eof":I
    .restart local v4    # "eof":I
    :cond_2d
    move/from16 v37, v4

    move-object/from16 v39, v11

    .line 344
    .end local v0    # "start":I
    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    :goto_17
    move/from16 v36, v6

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move-object/from16 v6, v38

    move-object/from16 v41, v39

    move/from16 v27, v7

    move-object/from16 v38, v8

    move-object/from16 v7, v24

    goto/16 :goto_29

    .line 535
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v37    # "eof":I
    .restart local v4    # "eof":I
    :catch_6
    move-exception v0

    move/from16 v37, v4

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    goto/16 :goto_3b

    .end local v5    # "p":I
    .end local v37    # "eof":I
    .restart local v3    # "p":I
    .restart local v4    # "eof":I
    :catch_7
    move-exception v0

    move/from16 v36, v3

    move/from16 v37, v4

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    move/from16 v5, v36

    .end local v3    # "p":I
    .end local v4    # "eof":I
    .restart local v36    # "p":I
    .restart local v37    # "eof":I
    goto/16 :goto_3b

    .line 320
    .end local v36    # "p":I
    .end local v37    # "eof":I
    .restart local v4    # "eof":I
    .restart local v5    # "p":I
    .restart local v6    # "cs":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :pswitch_3
    move/from16 v37, v4

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    if-eqz v14, :cond_2e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "endArray"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 323
    add-int/lit8 v7, v7, -0x1

    aget v0, v8, v7

    .line 324
    .end local v6    # "cs":I
    .local v0, "cs":I
    const/4 v6, 0x2

    .line 325
    .end local v32    # "_goto_targ":I
    .local v6, "_goto_targ":I
    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move/from16 v3, v35

    move/from16 v4, v37

    goto/16 :goto_0

    .line 299
    .end local v0    # "cs":I
    .end local v37    # "eof":I
    .restart local v4    # "eof":I
    .local v6, "cs":I
    .restart local v32    # "_goto_targ":I
    :pswitch_4
    move/from16 v37, v4

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    iget v0, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2f

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :cond_2f
    const/4 v0, 0x0

    .line 300
    .local v0, "name":Ljava/lang/String;
    :goto_18
    if-eqz v14, :cond_30

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startArray: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    :cond_30
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 303
    array-length v3, v8

    if-ne v7, v3, :cond_31

    .line 304
    array-length v3, v8

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    .line 305
    .local v3, "newStack":[I
    array-length v4, v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_9

    .line 306
    move-object v4, v3

    move-object v8, v4

    .line 309
    .end local v3    # "newStack":[I
    :cond_31
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "top":I
    .local v3, "top":I
    :try_start_11
    aput v6, v8, v7
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_8

    .line 310
    const/16 v4, 0x17

    .line 311
    .end local v6    # "cs":I
    .local v4, "cs":I
    const/4 v6, 0x2

    .line 312
    .end local v32    # "_goto_targ":I
    .local v6, "_goto_targ":I
    move v7, v3

    move v0, v4

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move/from16 v3, v35

    move/from16 v4, v37

    goto/16 :goto_0

    .line 287
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "top":I
    .end local v37    # "eof":I
    .local v4, "eof":I
    .local v6, "cs":I
    .restart local v7    # "top":I
    .restart local v32    # "_goto_targ":I
    :pswitch_5
    move/from16 v37, v4

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    if-eqz v14, :cond_32

    :try_start_12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "endObject"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 290
    add-int/lit8 v7, v7, -0x1

    aget v0, v8, v7

    .line 291
    .end local v6    # "cs":I
    .local v0, "cs":I
    const/4 v6, 0x2

    .line 292
    .end local v32    # "_goto_targ":I
    .local v6, "_goto_targ":I
    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move/from16 v3, v35

    move/from16 v4, v37

    goto/16 :goto_0

    .line 266
    .end local v0    # "cs":I
    .end local v37    # "eof":I
    .restart local v4    # "eof":I
    .local v6, "cs":I
    .restart local v32    # "_goto_targ":I
    :pswitch_6
    move/from16 v37, v4

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    iget v0, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_33

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_19

    :cond_33
    const/4 v0, 0x0

    .line 267
    .local v0, "name":Ljava/lang/String;
    :goto_19
    if-eqz v14, :cond_34

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startObject: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    :cond_34
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 270
    array-length v3, v8

    if-ne v7, v3, :cond_35

    .line 271
    array-length v3, v8

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    .line 272
    .local v3, "newStack":[I
    array-length v4, v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_9

    .line 273
    move-object v4, v3

    move-object v8, v4

    .line 276
    .end local v3    # "newStack":[I
    :cond_35
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "top":I
    .local v3, "top":I
    :try_start_13
    aput v6, v8, v7
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_8

    .line 277
    const/4 v4, 0x5

    .line 278
    .end local v6    # "cs":I
    .local v4, "cs":I
    const/4 v6, 0x2

    .line 279
    .end local v32    # "_goto_targ":I
    .local v6, "_goto_targ":I
    move v7, v3

    move v0, v4

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move/from16 v3, v35

    move/from16 v4, v37

    goto/16 :goto_0

    .line 535
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "cs":I
    .end local v6    # "_goto_targ":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v34    # "_acts":I
    :catch_8
    move-exception v0

    move v7, v3

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    goto/16 :goto_3b

    .end local v3    # "top":I
    .restart local v7    # "top":I
    :catch_9
    move-exception v0

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    goto/16 :goto_3b

    .line 189
    .end local v37    # "eof":I
    .local v4, "eof":I
    .local v6, "cs":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :pswitch_7
    move/from16 v37, v4

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    const/4 v4, 0x2

    .end local v4    # "eof":I
    .restart local v37    # "eof":I
    :try_start_14
    new-instance v0, Ljava/lang/String;

    sub-int v3, v5, v13

    invoke-direct {v0, v2, v13, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_18

    .line 190
    .local v0, "value":Ljava/lang/String;
    if-eqz v20, :cond_36

    :try_start_15
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_9

    move-object v0, v3

    goto :goto_1a

    :cond_36
    move-object v3, v0

    .line 192
    .end local v0    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_1a
    if-eqz v21, :cond_38

    .line 193
    const/4 v10, 0x0

    .line 194
    .end local v21    # "stringIsName":Z
    .local v10, "stringIsName":Z
    if-eqz v14, :cond_37

    :try_start_16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_37
    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_a

    move/from16 v36, v6

    move/from16 v21, v10

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move-object/from16 v6, v38

    move-object/from16 v41, v39

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v38, v8

    move/from16 v39, v13

    move-object/from16 v7, v24

    goto/16 :goto_28

    .line 535
    .end local v3    # "value":Ljava/lang/String;
    .end local v6    # "cs":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    :catch_a
    move-exception v0

    move-object/from16 v25, v9

    move v12, v10

    move v10, v13

    move/from16 v11, v20

    move/from16 v15, v23

    move/from16 v3, v35

    goto/16 :goto_3b

    .line 197
    .end local v10    # "stringIsName":Z
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v6    # "cs":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v21    # "stringIsName":Z
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :cond_38
    :try_start_17
    iget v0, v9, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_18

    if-lez v0, :cond_39

    :try_start_18
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_1b

    :cond_39
    const/4 v0, 0x0

    :goto_1b
    move-object v10, v0

    .line 198
    .local v10, "name":Ljava/lang/String;
    if-eqz v23, :cond_46

    .line 199
    :try_start_19
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_18

    if-eqz v0, :cond_3b

    .line 200
    if-eqz v14, :cond_3a

    :try_start_1a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v39

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v36, v6

    move-object/from16 v6, v38

    .end local v6    # "cs":I
    .local v36, "cs":I
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c

    .end local v36    # "cs":I
    .restart local v6    # "cs":I
    :cond_3a
    move/from16 v36, v6

    move-object/from16 v6, v38

    move-object/from16 v4, v39

    .line 201
    .end local v6    # "cs":I
    .restart local v36    # "cs":I
    :goto_1c
    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_9

    .line 202
    move-object/from16 v41, v4

    move-object/from16 v38, v8

    move/from16 v39, v13

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v7, v24

    goto/16 :goto_28

    .line 203
    .end local v36    # "cs":I
    .restart local v6    # "cs":I
    :cond_3b
    move/from16 v36, v6

    move-object/from16 v6, v38

    move-object/from16 v4, v39

    .end local v6    # "cs":I
    .restart local v36    # "cs":I
    move-object/from16 v11, v27

    :try_start_1b
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_18

    if-eqz v0, :cond_3d

    .line 204
    if-eqz v14, :cond_3c

    :try_start_1c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_c

    move/from16 v27, v7

    .end local v7    # "top":I
    .restart local v27    # "top":I
    :try_start_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_b

    move-object/from16 v38, v8

    .end local v8    # "stack":[I
    .local v38, "stack":[I
    :try_start_1e
    const-string v8, "=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 535
    .end local v3    # "value":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v36    # "cs":I
    .end local v38    # "stack":[I
    .restart local v8    # "stack":[I
    :catch_b
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v3, v35

    .end local v8    # "stack":[I
    .restart local v38    # "stack":[I
    goto/16 :goto_3b

    .end local v27    # "top":I
    .end local v38    # "stack":[I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    :catch_c
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v38, v8

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .restart local v27    # "top":I
    .restart local v38    # "stack":[I
    goto/16 :goto_3b

    .line 204
    .end local v27    # "top":I
    .end local v38    # "stack":[I
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    .restart local v36    # "cs":I
    :cond_3c
    move/from16 v27, v7

    move-object/from16 v38, v8

    .line 205
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .restart local v27    # "top":I
    .restart local v38    # "stack":[I
    :goto_1d
    const/4 v7, 0x0

    invoke-virtual {v1, v10, v7}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_d

    .line 206
    move-object/from16 v41, v4

    move/from16 v39, v13

    move-object/from16 v7, v24

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    move/from16 v28, v5

    goto/16 :goto_28

    .line 535
    .end local v3    # "value":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v36    # "cs":I
    :catch_d
    move-exception v0

    move-object/from16 v25, v9

    move v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v3, v35

    move-object/from16 v8, v38

    goto/16 :goto_3b

    .line 207
    .end local v27    # "top":I
    .end local v38    # "stack":[I
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    .restart local v36    # "cs":I
    :cond_3d
    move/from16 v27, v7

    move-object/from16 v38, v8

    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .restart local v27    # "top":I
    .restart local v38    # "stack":[I
    move-object/from16 v7, v25

    :try_start_1f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_16

    if-eqz v0, :cond_3e

    .line 208
    const/4 v8, 0x0

    :try_start_20
    invoke-virtual {v1, v10, v8}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_d

    .line 209
    move-object/from16 v41, v4

    move-object/from16 v40, v7

    move/from16 v39, v13

    move-object/from16 v7, v24

    move-object/from16 v42, v26

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    move/from16 v28, v5

    goto/16 :goto_28

    .line 211
    :cond_3e
    const/4 v0, 0x0

    .local v0, "couldBeDouble":Z
    const/4 v8, 0x1

    .line 213
    .local v8, "couldBeLong":Z
    move/from16 v25, v13

    move/from16 v43, v25

    move/from16 v25, v0

    move/from16 v0, v43

    .local v0, "i":I
    .local v25, "couldBeDouble":Z
    :goto_1e
    if-ge v0, v5, :cond_41

    .line 214
    move/from16 v33, v8

    .end local v8    # "couldBeLong":Z
    .local v33, "couldBeLong":Z
    :try_start_21
    aget-char v8, v2, v0
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_e

    move/from16 v39, v13

    const/16 v13, 0x2b

    .end local v13    # "s":I
    .local v39, "s":I
    if-eq v8, v13, :cond_40

    const/16 v13, 0x45

    if-eq v8, v13, :cond_3f

    const/16 v13, 0x65

    if-eq v8, v13, :cond_3f

    const/16 v13, 0x2d

    if-eq v8, v13, :cond_40

    const/16 v13, 0x2e

    if-eq v8, v13, :cond_3f

    packed-switch v8, :pswitch_data_1

    .line 235
    const/4 v8, 0x0

    .line 236
    .end local v25    # "couldBeDouble":Z
    .local v8, "couldBeDouble":Z
    const/4 v13, 0x0

    .line 237
    .end local v33    # "couldBeLong":Z
    .local v13, "couldBeLong":Z
    goto :goto_20

    .line 231
    .end local v8    # "couldBeDouble":Z
    .end local v13    # "couldBeLong":Z
    .restart local v25    # "couldBeDouble":Z
    .restart local v33    # "couldBeLong":Z
    :cond_3f
    const/4 v8, 0x1

    .line 232
    .end local v25    # "couldBeDouble":Z
    .restart local v8    # "couldBeDouble":Z
    const/4 v13, 0x0

    .line 233
    .end local v33    # "couldBeLong":Z
    .restart local v13    # "couldBeLong":Z
    move/from16 v25, v8

    move v8, v13

    goto :goto_1f

    .line 227
    .end local v8    # "couldBeDouble":Z
    .end local v13    # "couldBeLong":Z
    .restart local v25    # "couldBeDouble":Z
    .restart local v33    # "couldBeLong":Z
    :cond_40
    :pswitch_8
    move/from16 v8, v33

    .line 213
    .end local v33    # "couldBeLong":Z
    .local v8, "couldBeLong":Z
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v39

    goto :goto_1e

    .line 535
    .end local v0    # "i":I
    .end local v3    # "value":Ljava/lang/String;
    .end local v8    # "couldBeLong":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v25    # "couldBeDouble":Z
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v36    # "cs":I
    .end local v39    # "s":I
    .local v13, "s":I
    :catch_e
    move-exception v0

    move/from16 v39, v13

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v3, v35

    move-object/from16 v8, v38

    move/from16 v10, v39

    .end local v13    # "s":I
    .restart local v39    # "s":I
    goto/16 :goto_3b

    .line 213
    .end local v39    # "s":I
    .restart local v0    # "i":I
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v8    # "couldBeLong":Z
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "s":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v25    # "couldBeDouble":Z
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    .restart local v36    # "cs":I
    :cond_41
    move/from16 v33, v8

    move/from16 v39, v13

    .end local v8    # "couldBeLong":Z
    .end local v13    # "s":I
    .restart local v33    # "couldBeLong":Z
    .restart local v39    # "s":I
    move/from16 v8, v25

    move/from16 v13, v33

    .line 240
    .end local v0    # "i":I
    .end local v25    # "couldBeDouble":Z
    .end local v33    # "couldBeLong":Z
    .local v8, "couldBeDouble":Z
    .local v13, "couldBeLong":Z
    :goto_20
    if-eqz v8, :cond_43

    .line 242
    if-eqz v14, :cond_42

    :try_start_22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_12

    move/from16 v25, v8

    .end local v8    # "couldBeDouble":Z
    .restart local v25    # "couldBeDouble":Z
    :try_start_23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_12

    move-object/from16 v40, v7

    move-object/from16 v7, v26

    :try_start_24
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_12

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    :try_start_25
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_12

    move-object/from16 v41, v4

    move/from16 v28, v5

    .end local v5    # "p":I
    .restart local v28    # "p":I
    :try_start_26
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 245
    .end local v28    # "p":I
    .restart local v5    # "p":I
    :catch_f
    move-exception v0

    move-object/from16 v41, v4

    goto :goto_22

    :catch_10
    move-exception v0

    move-object/from16 v41, v4

    goto :goto_21

    :catch_11
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v40, v7

    move-object/from16 v7, v26

    :goto_21
    move-object/from16 v26, v11

    move-object/from16 v11, v28

    :goto_22
    move/from16 v28, v5

    .end local v5    # "p":I
    .restart local v28    # "p":I
    goto :goto_24

    .line 535
    .end local v3    # "value":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "couldBeLong":Z
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v25    # "couldBeDouble":Z
    .end local v28    # "p":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v36    # "cs":I
    .restart local v5    # "p":I
    :catch_12
    move-exception v0

    move/from16 v28, v5

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v3, v35

    move-object/from16 v8, v38

    move/from16 v10, v39

    .end local v5    # "p":I
    .restart local v28    # "p":I
    goto/16 :goto_3b

    .line 245
    .end local v28    # "p":I
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v5    # "p":I
    .restart local v8    # "couldBeDouble":Z
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "couldBeLong":Z
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    .restart local v36    # "cs":I
    :catch_13
    move-exception v0

    move-object/from16 v41, v4

    move-object/from16 v40, v7

    move/from16 v25, v8

    move-object/from16 v7, v26

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    move/from16 v28, v5

    .end local v5    # "p":I
    .end local v8    # "couldBeDouble":Z
    .restart local v25    # "couldBeDouble":Z
    .restart local v28    # "p":I
    goto :goto_24

    .line 242
    .end local v25    # "couldBeDouble":Z
    .end local v28    # "p":I
    .restart local v5    # "p":I
    .restart local v8    # "couldBeDouble":Z
    :cond_42
    move-object/from16 v41, v4

    move-object/from16 v40, v7

    move/from16 v25, v8

    move-object/from16 v7, v26

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    move/from16 v28, v5

    .line 243
    .end local v5    # "p":I
    .end local v8    # "couldBeDouble":Z
    .restart local v25    # "couldBeDouble":Z
    .restart local v28    # "p":I
    :goto_23
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5, v3}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_17

    .line 244
    move-object/from16 v42, v7

    move-object/from16 v7, v24

    goto/16 :goto_28

    .line 245
    :catch_14
    move-exception v0

    .line 246
    :goto_24
    move-object/from16 v42, v7

    goto/16 :goto_26

    .line 247
    .end local v25    # "couldBeDouble":Z
    .end local v28    # "p":I
    .restart local v5    # "p":I
    .restart local v8    # "couldBeDouble":Z
    :cond_43
    move-object/from16 v41, v4

    move-object/from16 v40, v7

    move/from16 v25, v8

    move-object/from16 v7, v26

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    move/from16 v28, v5

    .end local v5    # "p":I
    .end local v8    # "couldBeDouble":Z
    .restart local v25    # "couldBeDouble":Z
    .restart local v28    # "p":I
    if-eqz v13, :cond_45

    .line 248
    if-eqz v14, :cond_44

    :try_start_27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v42, v7

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_17

    goto :goto_25

    :cond_44
    move-object/from16 v42, v7

    .line 250
    :goto_25
    :try_start_28
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5, v3}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_17

    .line 251
    move-object/from16 v7, v24

    goto :goto_28

    .line 252
    :catch_15
    move-exception v0

    goto :goto_26

    .line 247
    :cond_45
    move-object/from16 v42, v7

    goto :goto_26

    .line 535
    .end local v3    # "value":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v25    # "couldBeDouble":Z
    .end local v28    # "p":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v36    # "cs":I
    .end local v39    # "s":I
    .restart local v5    # "p":I
    .local v13, "s":I
    :catch_16
    move-exception v0

    move/from16 v28, v5

    move/from16 v39, v13

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v3, v35

    move-object/from16 v8, v38

    move/from16 v10, v39

    .end local v5    # "p":I
    .end local v13    # "s":I
    .restart local v28    # "p":I
    .restart local v39    # "s":I
    goto/16 :goto_3b

    .line 198
    .end local v27    # "top":I
    .end local v28    # "p":I
    .end local v38    # "stack":[I
    .end local v39    # "s":I
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v5    # "p":I
    .restart local v6    # "cs":I
    .restart local v7    # "top":I
    .local v8, "stack":[I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v13    # "s":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :cond_46
    move/from16 v36, v6

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move-object/from16 v6, v38

    move-object/from16 v41, v39

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v38, v8

    move/from16 v39, v13

    .line 256
    .end local v5    # "p":I
    .end local v6    # "cs":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .end local v13    # "s":I
    .restart local v27    # "top":I
    .restart local v28    # "p":I
    .restart local v36    # "cs":I
    .restart local v38    # "stack":[I
    .restart local v39    # "s":I
    :goto_26
    if-eqz v14, :cond_47

    :try_start_29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_27

    :cond_47
    move-object/from16 v7, v24

    .line 257
    :goto_27
    invoke-virtual {v1, v10, v3}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_17

    .line 259
    .end local v10    # "name":Ljava/lang/String;
    :goto_28
    const/16 v23, 0x0

    .line 260
    move/from16 v13, v28

    .line 262
    .end local v3    # "value":Ljava/lang/String;
    .end local v39    # "s":I
    .restart local v13    # "s":I
    move/from16 v5, v28

    goto :goto_29

    .line 535
    .end local v13    # "s":I
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v36    # "cs":I
    .restart local v39    # "s":I
    :catch_17
    move-exception v0

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v5, v28

    move/from16 v3, v35

    move-object/from16 v8, v38

    move/from16 v10, v39

    goto/16 :goto_3b

    .end local v27    # "top":I
    .end local v28    # "p":I
    .end local v38    # "stack":[I
    .end local v39    # "s":I
    .restart local v5    # "p":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v13    # "s":I
    :catch_18
    move-exception v0

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v38, v8

    move/from16 v39, v13

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v3, v35

    move/from16 v10, v39

    .end local v5    # "p":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .end local v13    # "s":I
    .restart local v27    # "top":I
    .restart local v28    # "p":I
    .restart local v38    # "stack":[I
    .restart local v39    # "s":I
    goto/16 :goto_3b

    .line 183
    .end local v27    # "top":I
    .end local v28    # "p":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .end local v39    # "s":I
    .restart local v4    # "eof":I
    .restart local v5    # "p":I
    .restart local v6    # "cs":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v13    # "s":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .restart local v34    # "_acts":I
    :pswitch_9
    move/from16 v37, v4

    move/from16 v36, v6

    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move/from16 v39, v13

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v7, v24

    .end local v4    # "eof":I
    .end local v5    # "p":I
    .end local v6    # "cs":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .end local v13    # "s":I
    .restart local v27    # "top":I
    .restart local v28    # "p":I
    .restart local v36    # "cs":I
    .restart local v37    # "eof":I
    .restart local v38    # "stack":[I
    .restart local v39    # "s":I
    const/16 v21, 0x1

    .line 185
    nop

    .line 424
    .end local v28    # "p":I
    .end local v39    # "s":I
    .restart local v5    # "p":I
    .restart local v13    # "s":I
    :goto_29
    move-object v10, v6

    move-object/from16 v24, v7

    move-object/from16 v28, v11

    move/from16 v0, v18

    move/from16 v7, v27

    move/from16 v33, v34

    move/from16 v3, v35

    move/from16 v6, v36

    move/from16 v4, v37

    move-object/from16 v8, v38

    move-object/from16 v25, v40

    move-object/from16 v11, v41

    move-object/from16 v27, v26

    move-object/from16 v26, v42

    goto/16 :goto_6

    .line 535
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v18    # "_nacts":I
    .end local v27    # "top":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v34    # "_acts":I
    .end local v35    # "pe":I
    .end local v36    # "cs":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .local v3, "pe":I
    .restart local v4    # "eof":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    :catch_19
    move-exception v0

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v38, v8

    move/from16 v39, v13

    move/from16 v37, v4

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v10, v39

    .end local v3    # "pe":I
    .end local v4    # "eof":I
    .end local v5    # "p":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .end local v13    # "s":I
    .restart local v27    # "top":I
    .restart local v28    # "p":I
    .restart local v35    # "pe":I
    .restart local v37    # "eof":I
    .restart local v38    # "stack":[I
    .restart local v39    # "s":I
    goto/16 :goto_3b

    .line 178
    .end local v27    # "top":I
    .end local v28    # "p":I
    .end local v35    # "pe":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .end local v39    # "s":I
    .restart local v3    # "pe":I
    .restart local v4    # "eof":I
    .restart local v5    # "p":I
    .restart local v6    # "cs":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v13    # "s":I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v18    # "_nacts":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    .local v33, "_acts":I
    :cond_48
    move/from16 v35, v3

    move/from16 v37, v4

    move/from16 v36, v6

    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move/from16 v39, v13

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v28, v5

    move/from16 v27, v7

    move-object/from16 v7, v24

    .end local v3    # "pe":I
    .end local v4    # "eof":I
    .end local v5    # "p":I
    .end local v6    # "cs":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .end local v13    # "s":I
    .restart local v27    # "top":I
    .restart local v28    # "p":I
    .restart local v35    # "pe":I
    .restart local v36    # "cs":I
    .restart local v37    # "eof":I
    .restart local v38    # "stack":[I
    .restart local v39    # "s":I
    move/from16 v0, v36

    move/from16 v10, v39

    goto :goto_2a

    .line 535
    .end local v16    # "_trans":I
    .end local v17    # "_keys":I
    .end local v27    # "top":I
    .end local v28    # "p":I
    .end local v31    # "_klen":I
    .end local v32    # "_goto_targ":I
    .end local v33    # "_acts":I
    .end local v35    # "pe":I
    .end local v36    # "cs":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .end local v39    # "s":I
    .restart local v3    # "pe":I
    .restart local v4    # "eof":I
    .restart local v5    # "p":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .local v18, "s":I
    :catch_1a
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v38, v8

    move/from16 v37, v4

    move-object/from16 v25, v9

    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    .end local v3    # "pe":I
    .end local v4    # "eof":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .restart local v27    # "top":I
    .restart local v35    # "pe":I
    .restart local v37    # "eof":I
    .restart local v38    # "stack":[I
    goto/16 :goto_3b

    .line 175
    .end local v27    # "top":I
    .end local v35    # "pe":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .restart local v3    # "pe":I
    .restart local v4    # "eof":I
    .restart local v6    # "cs":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    .restart local v16    # "_trans":I
    .restart local v17    # "_keys":I
    .restart local v31    # "_klen":I
    .restart local v32    # "_goto_targ":I
    :cond_49
    move/from16 v35, v3

    move/from16 v37, v4

    move/from16 v36, v6

    move-object/from16 v38, v8

    move-object v6, v10

    move-object/from16 v41, v11

    move-object/from16 v40, v25

    move-object/from16 v42, v26

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move/from16 v27, v7

    move-object/from16 v7, v24

    .end local v3    # "pe":I
    .end local v4    # "eof":I
    .end local v6    # "cs":I
    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .restart local v27    # "top":I
    .restart local v35    # "pe":I
    .restart local v36    # "cs":I
    .restart local v37    # "eof":I
    .restart local v38    # "stack":[I
    move/from16 v10, v18

    move/from16 v0, v36

    .line 431
    .end local v17    # "_keys":I
    .end local v18    # "s":I
    .end local v31    # "_klen":I
    .end local v36    # "cs":I
    .local v0, "cs":I
    .local v10, "s":I
    :goto_2a
    if-nez v0, :cond_4a

    .line 432
    const/4 v6, 0x5

    .line 433
    .end local v32    # "_goto_targ":I
    .local v6, "_goto_targ":I
    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v3, v35

    move/from16 v4, v37

    move-object/from16 v8, v38

    goto/16 :goto_0

    .line 435
    .end local v6    # "_goto_targ":I
    .restart local v32    # "_goto_targ":I
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v35

    .end local v35    # "pe":I
    .restart local v3    # "pe":I
    if-eq v5, v3, :cond_4b

    .line 436
    const/4 v6, 0x1

    .line 437
    .end local v32    # "_goto_targ":I
    .restart local v6    # "_goto_targ":I
    move/from16 v11, v20

    move/from16 v12, v21

    move-object/from16 v13, v22

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v4, v37

    move-object/from16 v8, v38

    goto/16 :goto_0

    .line 435
    .end local v6    # "_goto_targ":I
    .restart local v32    # "_goto_targ":I
    :cond_4b
    move v4, v0

    .line 440
    .end local v0    # "cs":I
    .local v4, "cs":I
    :goto_2b
    move/from16 v8, v37

    .end local v37    # "eof":I
    .local v8, "eof":I
    if-ne v5, v8, :cond_60

    .line 441
    :try_start_2a
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v0, v0, v4

    .line 442
    .local v0, "__acts":I
    sget-object v13, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v17, v0, 0x1

    .end local v0    # "__acts":I
    .local v17, "__acts":I
    aget-byte v0, v13, v0
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_29

    .line 443
    .local v0, "__nacts":I
    :goto_2c
    add-int/lit8 v13, v0, -0x1

    .end local v0    # "__nacts":I
    .local v13, "__nacts":I
    if-lez v0, :cond_5f

    .line 444
    :try_start_2b
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "__acts":I
    .local v18, "__acts":I
    aget-byte v0, v0, v17

    move/from16 v24, v4

    const/4 v4, 0x1

    .end local v4    # "cs":I
    .local v24, "cs":I
    if-eq v0, v4, :cond_4c

    move/from16 v37, v8

    move-object/from16 v25, v9

    move v0, v10

    move-object/from16 v28, v12

    move/from16 v33, v13

    move-object/from16 v17, v26

    move-object/from16 v39, v41

    move-object/from16 v10, v42

    move-object/from16 v26, v6

    goto/16 :goto_39

    .line 448
    :cond_4c
    new-instance v0, Ljava/lang/String;

    sub-int v4, v5, v10

    invoke-direct {v0, v2, v10, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_28

    .line 449
    .local v0, "value":Ljava/lang/String;
    if-eqz v20, :cond_4d

    :try_start_2c
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_1b

    move-object v0, v4

    goto :goto_2d

    .line 535
    .end local v0    # "value":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v32    # "_goto_targ":I
    :catch_1b
    move-exception v0

    move/from16 v37, v8

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    goto/16 :goto_3b

    .line 449
    .restart local v0    # "value":Ljava/lang/String;
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_4d
    move-object v4, v0

    .line 451
    .end local v0    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :goto_2d
    if-eqz v21, :cond_4f

    .line 452
    const/16 v17, 0x0

    .line 453
    .end local v21    # "stringIsName":Z
    .local v17, "stringIsName":Z
    if-eqz v14, :cond_4e

    :try_start_2d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_1c

    move/from16 v37, v8

    .end local v8    # "eof":I
    .restart local v37    # "eof":I
    :try_start_2e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 535
    .end local v4    # "value":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v32    # "_goto_targ":I
    .end local v37    # "eof":I
    .restart local v8    # "eof":I
    :catch_1c
    move-exception v0

    move/from16 v37, v8

    move-object/from16 v25, v9

    move/from16 v12, v17

    move/from16 v11, v20

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    .end local v8    # "eof":I
    .restart local v37    # "eof":I
    goto/16 :goto_3b

    .line 453
    .end local v37    # "eof":I
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v8    # "eof":I
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_4e
    move/from16 v37, v8

    .line 454
    .end local v8    # "eof":I
    .restart local v37    # "eof":I
    :goto_2e
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_1d

    move-object/from16 v25, v9

    move/from16 v31, v10

    move-object/from16 v28, v12

    move/from16 v33, v13

    move/from16 v21, v17

    move-object/from16 v17, v26

    move-object/from16 v39, v41

    move-object/from16 v10, v42

    move-object/from16 v26, v6

    goto/16 :goto_38

    .line 535
    .end local v4    # "value":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v32    # "_goto_targ":I
    :catch_1d
    move-exception v0

    move-object/from16 v25, v9

    move/from16 v12, v17

    move/from16 v11, v20

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    goto/16 :goto_3b

    .line 456
    .end local v17    # "stringIsName":Z
    .end local v37    # "eof":I
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v8    # "eof":I
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v21    # "stringIsName":Z
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_4f
    move/from16 v37, v8

    .end local v8    # "eof":I
    .restart local v37    # "eof":I
    :try_start_2f
    iget v0, v9, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_27

    if-lez v0, :cond_50

    :try_start_30
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_1e

    goto :goto_2f

    .line 535
    .end local v4    # "value":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v32    # "_goto_targ":I
    :catch_1e
    move-exception v0

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    goto/16 :goto_3b

    .line 456
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_50
    const/4 v0, 0x0

    :goto_2f
    move-object v8, v0

    .line 457
    .local v8, "name":Ljava/lang/String;
    if-eqz v23, :cond_5c

    .line 458
    :try_start_31
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_27

    if-eqz v0, :cond_52

    .line 459
    if-eqz v14, :cond_51

    :try_start_32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_1f

    move-object/from16 v25, v9

    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v25, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :try_start_33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v12

    move-object/from16 v12, v41

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 535
    .end local v4    # "value":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v32    # "_goto_targ":I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_1f
    move-exception v0

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    goto/16 :goto_3b

    .line 459
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_51
    move-object/from16 v25, v9

    move-object/from16 v28, v12

    move-object/from16 v12, v41

    .line 460
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :goto_30
    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_20

    .line 461
    move/from16 v31, v10

    move-object/from16 v39, v12

    move/from16 v33, v13

    move-object/from16 v17, v26

    move-object/from16 v10, v42

    move-object/from16 v26, v6

    goto/16 :goto_38

    .line 535
    .end local v4    # "value":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v32    # "_goto_targ":I
    :catch_20
    move-exception v0

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    goto/16 :goto_3b

    .line 462
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_52
    move-object/from16 v25, v9

    move-object/from16 v28, v12

    move-object/from16 v12, v41

    const/4 v9, 0x1

    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    move-object/from16 v9, v26

    :try_start_34
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_25

    if-eqz v0, :cond_54

    .line 463
    if-eqz v14, :cond_53

    :try_start_35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v26, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    const-string v9, "=false"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_31

    :cond_53
    move-object/from16 v26, v6

    move-object/from16 v17, v9

    .line 464
    :goto_31
    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_20

    .line 465
    move/from16 v31, v10

    move-object/from16 v39, v12

    move/from16 v33, v13

    move-object/from16 v10, v42

    goto/16 :goto_38

    .line 466
    :cond_54
    move-object/from16 v26, v6

    move-object/from16 v17, v9

    move-object/from16 v6, v40

    :try_start_36
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_25

    if-eqz v0, :cond_55

    .line 467
    const/4 v9, 0x0

    :try_start_37
    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v40, v6

    move/from16 v31, v10

    move-object/from16 v39, v12

    move/from16 v33, v13

    move-object/from16 v10, v42

    goto/16 :goto_38

    .line 470
    :cond_55
    const/4 v0, 0x0

    .local v0, "couldBeDouble":Z
    const/4 v9, 0x1

    .line 472
    .local v9, "couldBeLong":Z
    move/from16 v29, v10

    move/from16 v43, v29

    move/from16 v29, v0

    move/from16 v0, v43

    .local v0, "i":I
    .local v29, "couldBeDouble":Z
    :goto_32
    if-ge v0, v5, :cond_58

    .line 473
    move-object/from16 v40, v6

    aget-char v6, v2, v0
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_20

    move/from16 v31, v9

    const/16 v9, 0x2b

    .end local v9    # "couldBeLong":Z
    .local v31, "couldBeLong":Z
    if-eq v6, v9, :cond_57

    const/16 v9, 0x45

    if-eq v6, v9, :cond_56

    const/16 v9, 0x65

    if-eq v6, v9, :cond_56

    const/16 v9, 0x2d

    if-eq v6, v9, :cond_57

    const/16 v9, 0x2e

    if-eq v6, v9, :cond_56

    packed-switch v6, :pswitch_data_2

    .line 494
    const/4 v6, 0x0

    .line 495
    .end local v29    # "couldBeDouble":Z
    .local v6, "couldBeDouble":Z
    const/4 v9, 0x0

    .line 496
    .end local v31    # "couldBeLong":Z
    .restart local v9    # "couldBeLong":Z
    move/from16 v29, v6

    goto :goto_34

    .line 490
    .end local v6    # "couldBeDouble":Z
    .end local v9    # "couldBeLong":Z
    .restart local v29    # "couldBeDouble":Z
    .restart local v31    # "couldBeLong":Z
    :cond_56
    const/4 v6, 0x1

    .line 491
    .end local v29    # "couldBeDouble":Z
    .restart local v6    # "couldBeDouble":Z
    const/4 v9, 0x0

    .line 492
    .end local v31    # "couldBeLong":Z
    .restart local v9    # "couldBeLong":Z
    move/from16 v29, v6

    goto :goto_33

    .line 486
    .end local v6    # "couldBeDouble":Z
    .end local v9    # "couldBeLong":Z
    .restart local v29    # "couldBeDouble":Z
    .restart local v31    # "couldBeLong":Z
    :cond_57
    :pswitch_a
    move/from16 v9, v31

    .line 472
    .end local v31    # "couldBeLong":Z
    .restart local v9    # "couldBeLong":Z
    :goto_33
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v40

    goto :goto_32

    :cond_58
    move-object/from16 v40, v6

    move/from16 v31, v9

    .line 499
    .end local v0    # "i":I
    :goto_34
    if-eqz v29, :cond_5a

    .line 501
    if-eqz v14, :cond_59

    :try_start_38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_25

    move/from16 v31, v10

    move-object/from16 v10, v42

    .end local v10    # "s":I
    .local v31, "s":I
    :try_start_39
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_26

    move-object/from16 v39, v12

    move/from16 v33, v13

    .end local v13    # "__nacts":I
    .local v33, "__nacts":I
    :try_start_3a
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_35

    .line 504
    .end local v33    # "__nacts":I
    .restart local v13    # "__nacts":I
    :catch_21
    move-exception v0

    move-object/from16 v39, v12

    move/from16 v33, v13

    .end local v13    # "__nacts":I
    .restart local v33    # "__nacts":I
    goto :goto_36

    .end local v31    # "s":I
    .end local v33    # "__nacts":I
    .restart local v10    # "s":I
    .restart local v13    # "__nacts":I
    :catch_22
    move-exception v0

    move/from16 v31, v10

    move-object/from16 v39, v12

    move/from16 v33, v13

    move-object/from16 v10, v42

    .end local v10    # "s":I
    .end local v13    # "__nacts":I
    .restart local v31    # "s":I
    .restart local v33    # "__nacts":I
    goto :goto_36

    .line 501
    .end local v31    # "s":I
    .end local v33    # "__nacts":I
    .restart local v10    # "s":I
    .restart local v13    # "__nacts":I
    :cond_59
    move/from16 v31, v10

    move-object/from16 v39, v12

    move/from16 v33, v13

    move-object/from16 v10, v42

    .line 502
    .end local v10    # "s":I
    .end local v13    # "__nacts":I
    .restart local v31    # "s":I
    .restart local v33    # "__nacts":I
    :goto_35
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v1, v8, v12, v13, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_26

    .line 503
    goto/16 :goto_38

    .line 504
    :catch_23
    move-exception v0

    .line 505
    :goto_36
    goto :goto_37

    .line 506
    .end local v31    # "s":I
    .end local v33    # "__nacts":I
    .restart local v10    # "s":I
    .restart local v13    # "__nacts":I
    :cond_5a
    move/from16 v31, v10

    move-object/from16 v39, v12

    move/from16 v33, v13

    move-object/from16 v10, v42

    .end local v10    # "s":I
    .end local v13    # "__nacts":I
    .restart local v31    # "s":I
    .restart local v33    # "__nacts":I
    if-eqz v9, :cond_5d

    .line 507
    if-eqz v14, :cond_5b

    :try_start_3b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_26

    .line 509
    :cond_5b
    :try_start_3c
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v1, v8, v12, v13, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_26

    .line 510
    goto :goto_38

    .line 511
    :catch_24
    move-exception v0

    goto :goto_37

    .line 535
    .end local v4    # "value":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "couldBeLong":Z
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v29    # "couldBeDouble":Z
    .end local v31    # "s":I
    .end local v32    # "_goto_targ":I
    .end local v33    # "__nacts":I
    .restart local v10    # "s":I
    :catch_25
    move-exception v0

    move/from16 v31, v10

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    .end local v10    # "s":I
    .restart local v31    # "s":I
    goto/16 :goto_3b

    .line 457
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31    # "s":I
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .local v9, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10    # "s":I
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .restart local v18    # "__acts":I
    .restart local v24    # "cs":I
    .restart local v32    # "_goto_targ":I
    :cond_5c
    move-object/from16 v25, v9

    move/from16 v31, v10

    move-object/from16 v28, v12

    move/from16 v33, v13

    move-object/from16 v17, v26

    move-object/from16 v39, v41

    move-object/from16 v10, v42

    move-object/from16 v26, v6

    .line 515
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10    # "s":I
    .end local v13    # "__nacts":I
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31    # "s":I
    .restart local v33    # "__nacts":I
    :cond_5d
    :goto_37
    if-eqz v14, :cond_5e

    :try_start_3d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 516
    :cond_5e
    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_26

    .line 518
    .end local v8    # "name":Ljava/lang/String;
    :goto_38
    const/16 v23, 0x0

    .line 519
    move v0, v5

    .line 521
    .end local v4    # "value":Ljava/lang/String;
    .end local v31    # "s":I
    .local v0, "s":I
    :goto_39
    move-object/from16 v42, v10

    move/from16 v4, v24

    move-object/from16 v9, v25

    move-object/from16 v6, v26

    move-object/from16 v12, v28

    move/from16 v8, v37

    move-object/from16 v41, v39

    move v10, v0

    move-object/from16 v26, v17

    move/from16 v17, v18

    move/from16 v0, v33

    goto/16 :goto_2c

    .line 535
    .end local v0    # "s":I
    .end local v16    # "_trans":I
    .end local v18    # "__acts":I
    .end local v24    # "cs":I
    .end local v32    # "_goto_targ":I
    .end local v33    # "__nacts":I
    .restart local v31    # "s":I
    :catch_26
    move-exception v0

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move/from16 v10, v31

    move-object/from16 v8, v38

    goto/16 :goto_3b

    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31    # "s":I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10    # "s":I
    :catch_27
    move-exception v0

    move-object/from16 v25, v9

    move/from16 v31, v10

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10    # "s":I
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31    # "s":I
    goto/16 :goto_3b

    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31    # "s":I
    .end local v37    # "eof":I
    .local v8, "eof":I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10    # "s":I
    :catch_28
    move-exception v0

    move/from16 v37, v8

    move-object/from16 v25, v9

    move/from16 v31, v10

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    .end local v8    # "eof":I
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10    # "s":I
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31    # "s":I
    .restart local v37    # "eof":I
    goto :goto_3b

    .line 443
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31    # "s":I
    .end local v37    # "eof":I
    .local v4, "cs":I
    .restart local v8    # "eof":I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10    # "s":I
    .restart local v13    # "__nacts":I
    .restart local v16    # "_trans":I
    .local v17, "__acts":I
    .restart local v32    # "_goto_targ":I
    :cond_5f
    move/from16 v24, v4

    move/from16 v37, v8

    move-object/from16 v25, v9

    move/from16 v31, v10

    move/from16 v33, v13

    .end local v4    # "cs":I
    .end local v8    # "eof":I
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v10    # "s":I
    .end local v13    # "__nacts":I
    .restart local v24    # "cs":I
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v31    # "s":I
    .restart local v33    # "__nacts":I
    .restart local v37    # "eof":I
    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v0, v24

    goto :goto_3a

    .line 535
    .end local v16    # "_trans":I
    .end local v17    # "__acts":I
    .end local v24    # "cs":I
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v31    # "s":I
    .end local v32    # "_goto_targ":I
    .end local v33    # "__nacts":I
    .end local v37    # "eof":I
    .restart local v8    # "eof":I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v10    # "s":I
    :catch_29
    move-exception v0

    move/from16 v37, v8

    move-object/from16 v25, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v7, v27

    move-object/from16 v8, v38

    .end local v8    # "eof":I
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v37    # "eof":I
    goto :goto_3b

    .line 440
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v37    # "eof":I
    .restart local v4    # "cs":I
    .restart local v8    # "eof":I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v16    # "_trans":I
    .restart local v32    # "_goto_targ":I
    :cond_60
    move/from16 v24, v4

    move/from16 v37, v8

    move-object/from16 v25, v9

    .end local v4    # "cs":I
    .end local v8    # "eof":I
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v24    # "cs":I
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v37    # "eof":I
    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    move/from16 v0, v24

    .line 529
    .end local v20    # "needsUnescape":Z
    .end local v21    # "stringIsName":Z
    .end local v23    # "stringIsUnquoted":Z
    .end local v24    # "cs":I
    .local v0, "cs":I
    .restart local v11    # "needsUnescape":Z
    .restart local v12    # "stringIsName":Z
    .restart local v15    # "stringIsUnquoted":Z
    :goto_3a
    nop

    .line 537
    .end local v16    # "_trans":I
    .end local v32    # "_goto_targ":I
    move-object/from16 v13, v22

    move/from16 v7, v27

    move-object/from16 v8, v38

    goto :goto_3c

    .line 535
    .end local v0    # "cs":I
    .end local v10    # "s":I
    .end local v11    # "needsUnescape":Z
    .end local v12    # "stringIsName":Z
    .end local v15    # "stringIsUnquoted":Z
    .end local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v27    # "top":I
    .end local v37    # "eof":I
    .end local v38    # "stack":[I
    .local v4, "eof":I
    .restart local v7    # "top":I
    .local v8, "stack":[I
    .restart local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v18, "s":I
    .restart local v20    # "needsUnescape":Z
    .restart local v21    # "stringIsName":Z
    .restart local v23    # "stringIsUnquoted":Z
    :catch_2a
    move-exception v0

    move/from16 v37, v4

    move/from16 v27, v7

    move-object/from16 v38, v8

    move-object/from16 v25, v9

    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v15, v23

    .line 536
    .end local v4    # "eof":I
    .end local v9    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v18    # "s":I
    .end local v20    # "needsUnescape":Z
    .end local v21    # "stringIsName":Z
    .end local v23    # "stringIsUnquoted":Z
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v10    # "s":I
    .restart local v11    # "needsUnescape":Z
    .restart local v12    # "stringIsName":Z
    .restart local v15    # "stringIsUnquoted":Z
    .restart local v25    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v37    # "eof":I
    :goto_3b
    move-object v13, v0

    .line 539
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v22    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .local v13, "parseRuntimeEx":Ljava/lang/RuntimeException;
    :goto_3c
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 540
    .local v0, "root":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 541
    iput-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 542
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 544
    if-ge v5, v3, :cond_63

    .line 545
    const/4 v4, 0x1

    .line 546
    .local v4, "lineNumber":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3d
    if-ge v6, v5, :cond_62

    .line 547
    aget-char v9, v2, v6

    move/from16 v16, v7

    const/16 v7, 0xa

    .end local v7    # "top":I
    .local v16, "top":I
    if-ne v9, v7, :cond_61

    add-int/lit8 v4, v4, 0x1

    .line 546
    :cond_61
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v16

    goto :goto_3d

    .end local v16    # "top":I
    .restart local v7    # "top":I
    :cond_62
    move/from16 v16, v7

    .line 548
    .end local v6    # "i":I
    .end local v7    # "top":I
    .restart local v16    # "top":I
    add-int/lit8 v6, v5, -0x20

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 549
    .local v6, "start":I
    new-instance v7, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    .end local v8    # "stack":[I
    .local v17, "stack":[I
    const-string v8, "Error parsing JSON on line "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " near: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    move/from16 v18, v4

    .end local v4    # "lineNumber":I
    .local v18, "lineNumber":I
    sub-int v4, v5, v6

    invoke-direct {v8, v2, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*ERROR*"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    const/16 v8, 0x40

    move/from16 v19, v6

    .end local v6    # "start":I
    .local v19, "start":I
    sub-int v6, v3, v5

    .line 550
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 551
    .end local v16    # "top":I
    .end local v17    # "stack":[I
    .end local v18    # "lineNumber":I
    .end local v19    # "start":I
    .restart local v7    # "top":I
    .restart local v8    # "stack":[I
    :cond_63
    move/from16 v16, v7

    move-object/from16 v17, v8

    .end local v7    # "top":I
    .end local v8    # "stack":[I
    .restart local v16    # "top":I
    .restart local v17    # "stack":[I
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v4, :cond_65

    .line 552
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    .line 553
    .local v4, "element":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v6, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 554
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 555
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v7, "Error parsing JSON, unmatched brace."

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 557
    :cond_64
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v7, "Error parsing JSON, unmatched bracket."

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 558
    .end local v4    # "element":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_65
    if-nez v13, :cond_66

    .line 561
    return-object v0

    .line 559
    :cond_66
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v13}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method protected pop()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 701
    return-void
.end method

.method protected startArray(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 691
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 692
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 694
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 695
    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 683
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 684
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 686
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 687
    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 704
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 705
    return-void
.end method
