.class public Lorg/apache/commons/collections/ExtendedProperties;
.super Ljava/util/Hashtable;
.source "ExtendedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;,
        Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    }
.end annotation


# static fields
.field protected static final END_TOKEN:Ljava/lang/String; = "}"

.field protected static final START_TOKEN:Ljava/lang/String; = "${"

.field protected static include:Ljava/lang/String;


# instance fields
.field protected basePath:Ljava/lang/String;

.field private defaults:Lorg/apache/commons/collections/ExtendedProperties;

.field protected file:Ljava/lang/String;

.field protected fileSeparator:Ljava/lang/String;

.field protected isInitialized:Z

.field protected keysAsListed:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const-string v0, "include"

    sput-object v0, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 454
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 172
    :try_start_0
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ExtendedProperties$1;-><init>(Lorg/apache/commons/collections/ExtendedProperties;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    .line 186
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    .line 455
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "defaultFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 172
    :try_start_0
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ExtendedProperties$1;-><init>(Lorg/apache/commons/collections/ExtendedProperties;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    .line 186
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    .line 475
    iput-object p1, p0, Lorg/apache/commons/collections/ExtendedProperties;->file:Ljava/lang/String;

    .line 477
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    .line 478
    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 483
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    nop

    .line 487
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 489
    goto :goto_1

    :catch_1
    move-exception v1

    .line 490
    nop

    .line 492
    :goto_1
    if-eqz p2, :cond_0

    .line 493
    new-instance v1, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v1, p2}, Lorg/apache/commons/collections/ExtendedProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    .line 495
    :cond_0
    return-void

    .line 485
    :catchall_0
    move-exception v1

    .line 486
    if-eqz v0, :cond_1

    .line 487
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 489
    :catch_2
    move-exception v2

    :cond_1
    :goto_2
    throw v1
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lorg/apache/commons/collections/ExtendedProperties;->endsWithSlash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 687
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    return-void
.end method

.method private addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 705
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 707
    .local v0, "current":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 710
    .local v1, "values":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .end local v1    # "values":Ljava/util/List;
    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 716
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 721
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :goto_0
    return-void
.end method

.method public static convertProperties(Ljava/util/Properties;)Lorg/apache/commons/collections/ExtendedProperties;
    .locals 4
    .param p0, "props"    # Ljava/util/Properties;

    .line 1689
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>()V

    .line 1691
    .local v0, "c":Lorg/apache/commons/collections/ExtendedProperties;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1693
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections/ExtendedProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1694
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1696
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method private static countPreceding(Ljava/lang/String;IC)I
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 338
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p2, :cond_0

    .line 340
    goto :goto_1

    .line 338
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 343
    :cond_1
    :goto_1
    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, v0

    return v1
.end method

.method private static endsWithSlash(Ljava/lang/String;)Z
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .line 350
    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 351
    return v1

    .line 353
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/16 v3, 0x5c

    invoke-static {p0, v0, v3}, Lorg/apache/commons/collections/ExtendedProperties;->countPreceding(Ljava/lang/String;IC)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 309
    .local v2, "c":C
    const/16 v3, 0x2c

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_0

    if-ne v2, v4, :cond_1

    .line 310
    :cond_0
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 307
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 324
    .local v2, "c1":C
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 325
    .local v3, "c2":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 322
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 657
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 658
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 659
    .local v0, "str":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 661
    new-instance v1, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;-><init>(Ljava/lang/String;)V

    .line 662
    .local v1, "tokenizer":Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {v1}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/collections/ExtendedProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    .end local v2    # "token":Ljava/lang/String;
    goto :goto_0

    .line 666
    .end local v1    # "tokenizer":Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;
    :cond_0
    goto :goto_1

    .line 668
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections/ExtendedProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 671
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 676
    return-void
.end method

.method public clearProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 807
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 811
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 813
    goto :goto_1

    .line 810
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_2
    return-void
.end method

.method public combine(Lorg/apache/commons/collections/ExtendedProperties;)V
    .locals 3
    .param p1, "props"    # Lorg/apache/commons/collections/ExtendedProperties;

    .line 795
    invoke-virtual {p1}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/ExtendedProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 799
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public display()V
    .locals 6

    .line 905
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 907
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 909
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 910
    .local v2, "value":Ljava/lang/Object;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 911
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 912
    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .line 1185
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1187
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1188
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 1190
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1191
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->testBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v2, "b":Ljava/lang/Boolean;
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return-object v2

    .line 1196
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "b":Ljava/lang/Boolean;
    :cond_1
    if-nez v0, :cond_3

    .line 1197
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1198
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1200
    :cond_2
    return-object p2

    .line 1203
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Boolean object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1153
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1156
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1170
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    .line 1245
    .local v0, "b":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 1248
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 1264
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Byte;

    .line 1280
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1282
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 1283
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    return-object v1

    .line 1285
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1286
    new-instance v1, Ljava/lang/Byte;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v1, "b":Ljava/lang/Byte;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    return-object v1

    .line 1290
    .end local v1    # "b":Ljava/lang/Byte;
    :cond_1
    if-nez v0, :cond_3

    .line 1291
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1292
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 1294
    :cond_2
    return-object p2

    .line 1297
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Byte object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 1623
    .local v0, "d":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 1626
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1642
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .line 1658
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1660
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 1661
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    return-object v1

    .line 1663
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1664
    new-instance v1, Ljava/lang/Double;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    return-object v1

    .line 1668
    .end local v1    # "d":Ljava/lang/Double;
    :cond_1
    if-nez v0, :cond_3

    .line 1669
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1670
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1672
    :cond_2
    return-object p2

    .line 1675
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Double object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 1553
    .local v0, "f":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1556
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 1572
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .line 1588
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1590
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1591
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    return-object v1

    .line 1593
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1594
    new-instance v1, Ljava/lang/Float;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v1, "f":Ljava/lang/Float;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    return-object v1

    .line 1598
    .end local v1    # "f":Ljava/lang/Float;
    :cond_1
    if-nez v0, :cond_3

    .line 1599
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1600
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1602
    :cond_2
    return-object p2

    .line 1605
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Float object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInclude()Ljava/lang/String;
    .locals 1

    .line 512
    sget-object v0, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1379
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 1391
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1408
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1411
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1427
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1429
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1430
    return p2

    .line 1432
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .line 1448
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1450
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1451
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 1453
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1454
    new-instance v1, Ljava/lang/Integer;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    return-object v1

    .line 1458
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_1
    if-nez v0, :cond_3

    .line 1459
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1460
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1462
    :cond_2
    return-object p2

    .line 1465
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Integer object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeys()Ljava/util/Iterator;
    .locals 1

    .line 827
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 839
    .local v0, "keys":Ljava/util/Iterator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v1, "matchingKeys":Ljava/util/ArrayList;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 844
    .local v2, "key":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 845
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/List;

    .line 1119
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1121
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1122
    new-instance v1, Ljava/util/ArrayList;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 1124
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1125
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1126
    .local v1, "values":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    return-object v1

    .line 1130
    .end local v1    # "values":Ljava/util/List;
    :cond_1
    if-nez v0, :cond_4

    .line 1131
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1132
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1134
    :cond_2
    if-nez p2, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    return-object v1

    .line 1137
    :cond_4
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a List object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1483
    .local v0, "l":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 1486
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1502
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .line 1518
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1520
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1521
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    return-object v1

    .line 1523
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1524
    new-instance v1, Ljava/lang/Long;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1525
    .local v1, "l":Ljava/lang/Long;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    return-object v1

    .line 1528
    .end local v1    # "l":Ljava/lang/Long;
    :cond_1
    if-nez v0, :cond_3

    .line 1529
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1530
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1532
    :cond_2
    return-object p2

    .line 1535
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Long object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 967
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaults"    # Ljava/util/Properties;

    .line 985
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "tokens":[Ljava/lang/String;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, p2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 989
    .local v1, "props":Ljava/util/Properties;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 990
    aget-object v3, v0, v2

    .line 991
    .local v3, "token":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 992
    .local v4, "equalSign":I
    if-lez v4, :cond_0

    .line 993
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, "pkey":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, "pvalue":Ljava/lang/String;
    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .end local v5    # "pkey":Ljava/lang/String;
    .end local v6    # "pvalue":Ljava/lang/String;
    nop

    .line 989
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "equalSign":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 997
    .restart local v3    # "token":Ljava/lang/String;
    .restart local v4    # "equalSign":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\' does not contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "an equals sign"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1000
    .end local v2    # "i":I
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "equalSign":I
    :cond_1
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 624
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 626
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 629
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 634
    :cond_0
    return-object v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .line 1350
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1352
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 1353
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    return-object v1

    .line 1355
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1356
    new-instance v1, Ljava/lang/Short;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v1, "s":Ljava/lang/Short;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    return-object v1

    .line 1360
    .end local v1    # "s":Ljava/lang/Short;
    :cond_1
    if-nez v0, :cond_3

    .line 1361
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1362
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 1364
    :cond_2
    return-object p2

    .line 1367
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Short object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    .line 1315
    .local v0, "s":Ljava/lang/Short;
    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    .line 1318
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to an existing object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 1334
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 937
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 939
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 940
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 942
    :cond_0
    if-nez v0, :cond_2

    .line 943
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_1

    .line 944
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 946
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 948
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 949
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 951
    :cond_3
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a String object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1013
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1016
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1017
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 1018
    .local v1, "values":Ljava/util/List;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    .end local v1    # "values":Ljava/util/List;
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1021
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 1033
    .restart local v1    # "values":Ljava/util/List;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1034
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1035
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1034
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1038
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 1023
    .end local v1    # "values":Ljava/util/List;
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_4

    .line 1024
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_3

    .line 1025
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 1030
    :cond_4
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a String/List object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Vector;

    .line 1067
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1069
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1070
    new-instance v1, Ljava/util/Vector;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 1072
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1073
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 1074
    .local v1, "values":Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    return-object v1

    .line 1078
    .end local v1    # "values":Ljava/util/Vector;
    :cond_1
    if-nez v0, :cond_4

    .line 1079
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_2

    .line 1080
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    return-object v1

    .line 1082
    :cond_2
    if-nez p2, :cond_3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    return-object v1

    .line 1085
    :cond_4
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' doesn\'t map to a Vector object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected interpolate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "base"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "priorVariables"    # Ljava/util/List;

    .line 233
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 234
    return-object v0

    .line 239
    :cond_0
    if-nez p2, :cond_1

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v1

    .line 241
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    const/4 v1, -0x1

    .line 245
    .local v1, "begin":I
    const/4 v2, -0x1

    .line 246
    .local v2, "end":I
    const-string v3, "}"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    rsub-int/lit8 v4, v4, 0x0

    .line 247
    .local v4, "prec":I
    const/4 v6, 0x0

    .line 248
    .local v6, "variable":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .local v7, "result":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    const-string v9, "${"

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move v1, v8

    const/4 v10, -0x1

    if-le v8, v10, :cond_7

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move v2, v8

    if-le v8, v10, :cond_7

    .line 253
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 258
    invoke-interface {p2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "initialBase":Ljava/lang/String;
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v3, "priorVariableSb":Ljava/lang/StringBuffer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 266
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    const-string v8, "->"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 271
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "infinite loop in property interpolation of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    .end local v0    # "initialBase":Ljava/lang/String;
    .end local v3    # "priorVariableSb":Ljava/lang/StringBuffer;
    :cond_4
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0, v6}, Lorg/apache/commons/collections/ExtendedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 281
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_5

    .line 282
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p2}, Lorg/apache/commons/collections/ExtendedProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 289
    :cond_5
    iget-object v10, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v10, :cond_6

    invoke-virtual {v10, v6, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 290
    iget-object v9, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v9, v6}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 293
    :cond_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :goto_2
    move v4, v2

    .line 296
    .end local v8    # "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 297
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "reader":Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    if-eqz p2, :cond_0

    .line 547
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 551
    goto :goto_0

    .line 543
    .end local v0    # "reader":Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .end local p0    # "this":Lorg/apache/commons/collections/ExtendedProperties;
    .end local p1    # "input":Ljava/io/InputStream;
    .end local p2    # "enc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 549
    .restart local v0    # "reader":Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .restart local p1    # "input":Ljava/io/InputStream;
    .restart local p2    # "enc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 554
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 556
    :try_start_1
    new-instance v1, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "8859_1"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 562
    goto :goto_1

    .line 558
    :catch_1
    move-exception v1

    .line 561
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 567
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;->readProperty()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 568
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 611
    :try_start_4
    iput-boolean v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 571
    :cond_2
    const/16 v3, 0x3d

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 573
    .local v3, "equalSign":I
    if-lez v3, :cond_8

    .line 574
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "value":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 579
    goto :goto_1

    .line 582
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getInclude()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getInclude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 584
    const/4 v6, 0x0

    .line 586
    .local v6, "file":Ljava/io/File;
    iget-object v7, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 588
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_2

    .line 594
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 595
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 598
    :cond_5
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 601
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 602
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v7}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;)V

    .line 604
    .end local v6    # "file":Ljava/io/File;
    :cond_6
    goto :goto_3

    .line 605
    :cond_7
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/collections/ExtendedProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 608
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "equalSign":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_8
    :goto_3
    goto/16 :goto_1

    .line 611
    :catchall_1
    move-exception v2

    :try_start_6
    iput-boolean v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 543
    .end local v0    # "reader":Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;
    .end local p1    # "input":Ljava/io/InputStream;
    .end local p2    # "enc":Ljava/lang/String;
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 750
    if-nez p1, :cond_0

    .line 751
    monitor-exit p0

    return-void

    .line 753
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 754
    .local v0, "theWrtr":Ljava/io/PrintWriter;
    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    .end local p0    # "this":Lorg/apache/commons/collections/ExtendedProperties;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 759
    .local v1, "theKeys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 760
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 761
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 762
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 763
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 764
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 765
    .local v4, "currentOutput":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/collections/ExtendedProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 768
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v4    # "currentOutput":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 770
    :cond_2
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 771
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 772
    .local v4, "values":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 773
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 774
    .local v6, "currentElement":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 775
    .local v7, "currentOutput":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    invoke-static {v6}, Lorg/apache/commons/collections/ExtendedProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    .end local v6    # "currentElement":Ljava/lang/String;
    .end local v7    # "currentOutput":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 782
    .end local v4    # "values":Ljava/util/List;
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 783
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 785
    :cond_4
    monitor-exit p0

    return-void

    .line 749
    .end local v0    # "theWrtr":Ljava/io/PrintWriter;
    .end local v1    # "theKeys":Ljava/util/Enumeration;
    .end local p1    # "output":Ljava/io/OutputStream;
    .end local p2    # "header":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInclude(Ljava/lang/String;)V
    .locals 0
    .param p1, "inc"    # Ljava/lang/String;

    .line 522
    sput-object p1, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 736
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->clearProperty(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    return-void
.end method

.method public subset(Ljava/lang/String;)Lorg/apache/commons/collections/ExtendedProperties;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 860
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>()V

    .line 861
    .local v0, "c":Lorg/apache/commons/collections/ExtendedProperties;
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 862
    .local v1, "keys":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 864
    .local v2, "validSubset":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 867
    .local v3, "key":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    if-nez v2, :cond_0

    .line 869
    const/4 v2, 0x1

    .line 878
    :cond_0
    const/4 v4, 0x0

    .line 879
    .local v4, "newKey":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 880
    move-object v4, p1

    goto :goto_1

    .line 882
    :cond_1
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 890
    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V

    .line 892
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "newKey":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 894
    :cond_3
    if-eqz v2, :cond_4

    .line 895
    return-object v0

    .line 897
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method public testBoolean(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1220
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1224
    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1227
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 1225
    :cond_2
    :goto_0
    return-object v1

    .line 1223
    :cond_3
    :goto_1
    return-object v1
.end method
