.class public Lcom/thoughtworks/xstream/XStreamer;
.super Ljava/lang/Object;
.source "XStreamer.java"


# static fields
.field private static final PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

.field static synthetic class$com$thoughtworks$xstream$MarshallingStrategy:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$XStream:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterMatcher:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$MarshallingContext:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$UnmarshallingContext:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$javabean$JavaBeanProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$FieldKeySorter:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$io$HierarchicalStreamDriver:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$io$naming$NameCoder:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$security$TypePermission:Ljava/lang/Class;

.field static synthetic class$javax$xml$datatype$DatatypeFactory:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    new-instance v1, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v2, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterMatcher:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 54
    const-string v2, "com.thoughtworks.xstream.converters.ConverterMatcher"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterMatcher:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 55
    const-string v3, "com.thoughtworks.xstream.mapper.Mapper"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-direct {v1, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$XStream:Ljava/lang/Class;

    if-nez v5, :cond_2

    .line 56
    const-string v5, "com.thoughtworks.xstream.XStream"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$XStream:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    if-nez v5, :cond_3

    .line 57
    const-string v5, "com.thoughtworks.xstream.converters.reflection.ReflectionProvider"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$javabean$JavaBeanProvider:Ljava/lang/Class;

    if-nez v5, :cond_4

    .line 58
    const-string v5, "com.thoughtworks.xstream.converters.javabean.JavaBeanProvider"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$javabean$JavaBeanProvider:Ljava/lang/Class;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$FieldKeySorter:Ljava/lang/Class;

    if-nez v5, :cond_5

    .line 59
    const-string v5, "com.thoughtworks.xstream.converters.reflection.FieldKeySorter"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$FieldKeySorter:Ljava/lang/Class;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    if-nez v5, :cond_6

    .line 60
    const-string v5, "com.thoughtworks.xstream.converters.ConverterLookup"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    if-nez v5, :cond_7

    .line 61
    const-string v5, "com.thoughtworks.xstream.converters.ConverterRegistry"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0x8

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$HierarchicalStreamDriver:Ljava/lang/Class;

    if-nez v5, :cond_8

    .line 62
    const-string v5, "com.thoughtworks.xstream.io.HierarchicalStreamDriver"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$HierarchicalStreamDriver:Ljava/lang/Class;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0x9

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$MarshallingStrategy:Ljava/lang/Class;

    if-nez v5, :cond_9

    .line 63
    const-string v5, "com.thoughtworks.xstream.MarshallingStrategy"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$MarshallingStrategy:Ljava/lang/Class;

    goto :goto_9

    :cond_9
    nop

    :goto_9
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xa

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$MarshallingContext:Ljava/lang/Class;

    if-nez v5, :cond_a

    .line 64
    const-string v5, "com.thoughtworks.xstream.converters.MarshallingContext"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$MarshallingContext:Ljava/lang/Class;

    goto :goto_a

    :cond_a
    nop

    :goto_a
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xb

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$UnmarshallingContext:Ljava/lang/Class;

    if-nez v5, :cond_b

    .line 65
    const-string v5, "com.thoughtworks.xstream.converters.UnmarshallingContext"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$UnmarshallingContext:Ljava/lang/Class;

    goto :goto_b

    :cond_b
    nop

    :goto_b
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xc

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$naming$NameCoder:Ljava/lang/Class;

    if-nez v5, :cond_c

    .line 66
    const-string v5, "com.thoughtworks.xstream.io.naming.NameCoder"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$naming$NameCoder:Ljava/lang/Class;

    goto :goto_c

    :cond_c
    nop

    :goto_c
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xd

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$security$TypePermission:Ljava/lang/Class;

    if-nez v5, :cond_d

    .line 67
    const-string v5, "com.thoughtworks.xstream.security.TypePermission"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$security$TypePermission:Ljava/lang/Class;

    goto :goto_d

    :cond_d
    nop

    :goto_d
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xe

    new-instance v4, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    if-nez v6, :cond_e

    .line 68
    const-string v6, "com.thoughtworks.xstream.core.JVM"

    invoke-static {v6}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    goto :goto_e

    :cond_e
    nop

    :goto_e
    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ".**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-direct {v4, v3}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$javax$xml$datatype$DatatypeFactory:Ljava/lang/Class;

    if-nez v3, :cond_f

    .line 69
    const-string v3, "javax.xml.datatype.DatatypeFactory"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$javax$xml$datatype$DatatypeFactory:Ljava/lang/Class;

    goto :goto_f

    :cond_f
    nop

    :goto_f
    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static getDefaultPermissions()[Lcom/thoughtworks/xstream/security/TypePermission;
    .locals 1

    .line 300
    sget-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    return-object v0
.end method


# virtual methods
.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p2, "xml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 6
    .param p1, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p2, "xml"    # Ljava/io/Reader;
    .param p3, "permissions"    # [Lcom/thoughtworks/xstream/security/TypePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 271
    .local v0, "outer":Lcom/thoughtworks/xstream/XStream;
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->setupDefaultSecurity(Lcom/thoughtworks/xstream/XStream;)V

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 273
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v1

    .line 276
    .local v1, "reader":Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v2

    .line 278
    .local v2, "configIn":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thoughtworks/xstream/XStream;

    .line 279
    .local v3, "configured":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v3, v1}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 281
    return-object v5

    .line 283
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 284
    nop

    .end local v0    # "outer":Lcom/thoughtworks/xstream/XStream;
    .end local v1    # "reader":Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .end local v2    # "configIn":Ljava/io/ObjectInputStream;
    .end local p1    # "driver":Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .end local p2    # "xml":Ljava/io/Reader;
    .end local p3    # "permissions":[Lcom/thoughtworks/xstream/security/TypePermission;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    .end local v3    # "configured":Lcom/thoughtworks/xstream/XStream;
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "outer":Lcom/thoughtworks/xstream/XStream;
    .restart local v1    # "reader":Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .restart local v2    # "configIn":Ljava/io/ObjectInputStream;
    .restart local p1    # "driver":Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .restart local p2    # "xml":Ljava/io/Reader;
    .restart local p3    # "permissions":[Lcom/thoughtworks/xstream/security/TypePermission;
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 287
    throw v3
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p2, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/ObjectStreamException;
    throw v0
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/String;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 3
    .param p1, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "permissions"    # [Lcom/thoughtworks/xstream/security/TypePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/ObjectStreamException;
    throw v0
.end method

.method public fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "xml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 1
    .param p1, "xml"    # Ljava/io/Reader;
    .param p2, "permissions"    # [Lcom/thoughtworks/xstream/security/TypePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 134
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/ObjectStreamException;
    throw v0
.end method

.method public fromXML(Ljava/lang/String;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 3
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "permissions"    # [Lcom/thoughtworks/xstream/security/TypePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 156
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/ObjectStreamException;
    throw v0
.end method

.method public toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "xstream"    # Lcom/thoughtworks/xstream/XStream;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 83
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStreamer;->toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Unexpected IO error from a StringWriter"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/ObjectStreamException;
    throw v1
.end method

.method public toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 3
    .param p1, "xstream"    # Lcom/thoughtworks/xstream/XStream;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    .line 110
    .local v0, "outer":Lcom/thoughtworks/xstream/XStream;
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->setupDefaultSecurity(Lcom/thoughtworks/xstream/XStream;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Ljava/io/Writer;)Ljava/io/ObjectOutputStream;

    move-result-object v1

    .line 113
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 115
    invoke-virtual {p1, p2, p3}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 118
    throw v2
.end method
