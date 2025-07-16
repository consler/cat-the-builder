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

.field protected static include:Ljava/lang/String; = "include"


# instance fields
.field protected basePath:Ljava/lang/String;

.field private defaults:Lorg/apache/commons/collections/ExtendedProperties;

.field protected file:Ljava/lang/String;

.field protected fileSeparator:Ljava/lang/String;

.field protected isInitialized:Z

.field protected keysAsListed:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

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

    goto :goto_0

    .line 179
    :catch_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 464
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    goto :goto_0

    .line 179
    :catch_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    .line 186
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

    const/4 v0, 0x0

    .line 482
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 483
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    if-eqz p2, :cond_0

    .line 493
    new-instance p1, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    .line 487
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 489
    :catch_2
    :cond_1
    throw p1
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 145
    invoke-static {p0}, Lorg/apache/commons/collections/ExtendedProperties;->endsWithSlash(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

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

    return-void
.end method

.method private addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 705
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 707
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 710
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 714
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 716
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 721
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->keysAsListed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static convertProperties(Ljava/util/Properties;)Lorg/apache/commons/collections/ExtendedProperties;
    .locals 4

    .line 1689
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>()V

    .line 1691
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1693
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections/ExtendedProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static countPreceding(Ljava/lang/String;IC)I
    .locals 2

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    :goto_0
    if-ltz v0, :cond_1

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p1, v0

    return p1
.end method

.method private static endsWithSlash(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\"

    .line 350
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 353
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/16 v3, 0x5c

    invoke-static {p0, v0, v3}, Lorg/apache/commons/collections/ExtendedProperties;->countPreceding(Ljava/lang/String;IC)I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 307
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    const/16 v3, 0x5c

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 310
    :cond_0
    invoke-virtual {v0, p0, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 322
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_1

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    add-int/lit8 v2, p0, 0x1

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    move p0, v2

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 657
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 658
    check-cast p2, Ljava/lang/String;

    const-string v0, ","

    .line 659
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 661
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;-><init>(Ljava/lang/String;)V

    .line 662
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 663
    invoke-virtual {v0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 664
    invoke-static {p2}, Lorg/apache/commons/collections/ExtendedProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/collections/ExtendedProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 671
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyInternal(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 675
    iput-boolean p1, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    return-void
.end method

.method public clearProperty(Ljava/lang/String;)V
    .locals 2

    .line 807
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 810
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

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public combine(Lorg/apache/commons/collections/ExtendedProperties;)V
    .locals 3

    .line 795
    invoke-virtual {p1}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/ExtendedProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public display()V
    .locals 5

    .line 905
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 907
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 909
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 910
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 1185
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1187
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1188
    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 1190
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1191
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ExtendedProperties;->testBoolean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1192
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 1197
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1198
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1203
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Boolean object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1156
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1170
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3

    const/4 v0, 0x0

    .line 1244
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    .line 1248
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 1

    .line 1264
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 2

    .line 1280
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1282
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 1283
    check-cast v0, Ljava/lang/Byte;

    return-object v0

    .line 1285
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1286
    new-instance p2, Ljava/lang/Byte;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    .line 1291
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1292
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getByte(Ljava/lang/String;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1297
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Byte object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    const/4 v0, 0x0

    .line 1622
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 1626
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 1642
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2

    .line 1658
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1660
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 1661
    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 1663
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1664
    new-instance p2, Ljava/lang/Double;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    .line 1669
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1670
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1675
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Double object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3

    const/4 v0, 0x0

    .line 1552
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 1556
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 1572
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    .line 1588
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1590
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1591
    check-cast v0, Ljava/lang/Float;

    return-object v0

    .line 1593
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1594
    new-instance p2, Ljava/lang/Float;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    .line 1599
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1600
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1605
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Float object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getInclude()Ljava/lang/String;
    .locals 1

    .line 512
    sget-object v0, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 1379
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 1391
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1407
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1411
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1427
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 1432
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 1448
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1450
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1451
    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 1453
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1454
    new-instance p2, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    .line 1459
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1460
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1465
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Integer object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
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

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 839
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 844
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 845
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 1102
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1119
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1121
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1122
    new-instance p1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 1124
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1125
    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1126
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_4

    .line 1131
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1132
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 1134
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    return-object p2

    .line 1137
    :cond_4
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a List object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    const/4 v0, 0x0

    .line 1482
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1486
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1502
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 1518
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1520
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1521
    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 1523
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1524
    new-instance p2, Ljava/lang/Long;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    .line 1529
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1530
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1535
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Long object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    .line 967
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public getProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 5

    .line 985
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 988
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const/4 p2, 0x0

    move v1, p2

    .line 989
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 990
    aget-object v2, p1, v1

    const/16 v3, 0x3d

    .line 991
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 993
    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-virtual {v0, v4, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, "\' does not contain an equals sign"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 624
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 629
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 2

    .line 1350
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1352
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 1353
    check-cast v0, Ljava/lang/Short;

    return-object v0

    .line 1355
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1356
    new-instance p2, Ljava/lang/Short;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_3

    .line 1361
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1362
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 1367
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Short object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3

    const/4 v0, 0x0

    .line 1314
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 1318
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to an existing object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1

    .line 1334
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getShort(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 937
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 939
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 940
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v0, :cond_2

    .line 943
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 946
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 948
    :cond_2
    instance-of p2, v0, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 949
    check-cast v0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 951
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a String object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1013
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1016
    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1017
    new-instance p1, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1018
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1021
    move-object p1, v0

    check-cast p1, Ljava/util/List;

    .line 1033
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1035
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    if-nez v0, :cond_4

    .line 1024
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_3

    .line 1025
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v2, [Ljava/lang/String;

    return-object p1

    .line 1030
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\' doesn\'t map to a String/List object"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2

    .line 1067
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1069
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1070
    new-instance p1, Ljava/util/Vector;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 1072
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1073
    new-instance p2, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1074
    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    if-nez v0, :cond_4

    .line 1079
    iget-object v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v0, :cond_2

    .line 1080
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->getVector(Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    .line 1082
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    :cond_3
    return-object p2

    .line 1085
    :cond_4
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\' doesn\'t map to a Vector object"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected interpolate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 240
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    add-int/lit8 v3, v3, 0x1

    const-string v4, "${"

    .line 251
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v2, :cond_7

    const-string v6, "}"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-le v7, v2, :cond_7

    .line 253
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x2

    .line 254
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 p1, 0x0

    .line 258
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 266
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "->"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 271
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "infinite loop in property interpolation of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 276
    :cond_4
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/ExtendedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 282
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/collections/ExtendedProperties;->interpolateHelper(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 289
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v3, v0}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 290
    iget-object v4, p0, Lorg/apache/commons/collections/ExtendedProperties;->defaults:Lorg/apache/commons/collections/ExtendedProperties;

    invoke-virtual {v4, v3}, Lorg/apache/commons/collections/ExtendedProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 293
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    move v3, v7

    goto/16 :goto_0

    .line 297
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 547
    :try_start_0
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 556
    :try_start_1
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance p2, Ljava/io/InputStreamReader;

    const-string v1, "8859_1"

    invoke-direct {p2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 561
    :catch_1
    :try_start_2
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, p2}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 567
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/collections/ExtendedProperties$PropertiesReader;->readProperty()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_2

    .line 611
    :try_start_4
    iput-boolean p1, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/16 v1, 0x3d

    .line 571
    :try_start_5
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 574
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 575
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    .line 578
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 582
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getInclude()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getInclude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 586
    iget-object v1, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 588
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 594
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/ExtendedProperties;->fileSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    .line 595
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 598
    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/collections/ExtendedProperties;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 602
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/ExtendedProperties;->load(Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 605
    :cond_6
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception p2

    .line 611
    :try_start_6
    iput-boolean p1, p0, Lorg/apache/commons/collections/ExtendedProperties;->isInitialized:Z

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 751
    monitor-exit p0

    return-void

    .line 753
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 759
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 760
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 761
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 763
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 764
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 765
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "="

    .line 766
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/collections/ExtendedProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 768
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 770
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 771
    check-cast v1, Ljava/util/List;

    .line 772
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 773
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 774
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 775
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    .line 776
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    invoke-static {v2}, Lorg/apache/commons/collections/ExtendedProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 783
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 785
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInclude(Ljava/lang/String;)V
    .locals 0

    .line 522
    sput-object p1, Lorg/apache/commons/collections/ExtendedProperties;->include:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 736
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ExtendedProperties;->clearProperty(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/ExtendedProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public subset(Ljava/lang/String;)Lorg/apache/commons/collections/ExtendedProperties;
    .locals 8

    .line 860
    new-instance v0, Lorg/apache/commons/collections/ExtendedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections/ExtendedProperties;-><init>()V

    .line 861
    invoke-virtual {p0}, Lorg/apache/commons/collections/ExtendedProperties;->getKeys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 864
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 867
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    move v2, v5

    .line 879
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    move-object v4, p1

    goto :goto_1

    .line 882
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 890
    :goto_1
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/ExtendedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/collections/ExtendedProperties;->addPropertyDirect(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public testBoolean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1220
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    .line 1222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 1224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method
