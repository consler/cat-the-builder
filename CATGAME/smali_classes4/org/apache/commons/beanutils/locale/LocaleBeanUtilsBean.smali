.class public Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
.super Lorg/apache/commons/beanutils/BeanUtilsBean;
.source "LocaleBeanUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
    }
.end annotation


# static fields
.field private static final LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
            "Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    .line 83
    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 94
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;)V
    .locals 1
    .param p1, "localeConvertUtils"    # Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    .line 83
    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 120
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .locals 1
    .param p1, "localeConvertUtils"    # Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
    .param p2, "convertUtilsBean"    # Lorg/apache/commons/beanutils/ConvertUtilsBean;
    .param p3, "propertyUtilsBean"    # Lorg/apache/commons/beanutils/PropertyUtilsBean;

    .line 109
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    .line 83
    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 110
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    .line 111
    return-void
.end method

.method public static getLocaleBeanUtilsInstance()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;)V
    .locals 1
    .param p0, "newInstance"    # Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    .line 79
    sget-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected calculate(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
    .locals 13
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 918
    move-object v0, p1

    .line 919
    .local v0, "target":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v1

    .line 920
    .local v1, "resolver":Lorg/apache/commons/beanutils/expression/Resolver;
    :goto_0
    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v2

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 923
    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    .line 926
    goto :goto_0

    .line 924
    :catch_0
    move-exception v2

    .line 925
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x0

    return-object v3

    .line 928
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Target bean = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 930
    iget-object v2, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Target name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 934
    :cond_1
    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, "propName":Ljava/lang/String;
    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v10

    .line 936
    .local v10, "index":I
    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 938
    .local v11, "key":Ljava/lang/String;
    new-instance v12, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move-object v6, v9

    move-object v7, v11

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;-><init>(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v12
.end method

.method protected convert(Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 819
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 821
    .local v0, "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-gez p2, :cond_2

    .line 822
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 823
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 824
    .local v1, "values":[Ljava/lang/String;
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 825
    invoke-static {v1, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 826
    .end local v1    # "values":[Ljava/lang/String;
    goto :goto_0

    .line 827
    :cond_0
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 828
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 831
    :cond_1
    move-object v0, p3

    goto :goto_0

    .line 834
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 835
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 836
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 836
    invoke-static {v1, v2}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_3
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 840
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    .line 841
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 840
    invoke-static {v1, v2}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 844
    :cond_4
    move-object v0, p3

    goto :goto_0

    .line 848
    :cond_5
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 849
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_6
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 852
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 856
    :cond_7
    move-object v0, p3

    .line 859
    :goto_0
    return-object v0
.end method

.method protected convert(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 762
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 766
    :cond_0
    const/4 v0, 0x0

    .line 768
    .local v0, "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-gez p2, :cond_3

    .line 769
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 770
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 771
    .local v1, "values":[Ljava/lang/String;
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 772
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 773
    .end local v1    # "values":[Ljava/lang/String;
    goto/16 :goto_0

    .line 774
    :cond_1
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 775
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    move-object v2, p3

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_2
    move-object v0, p3

    goto :goto_0

    .line 781
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 782
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 783
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    .line 784
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 783
    invoke-virtual {v1, v2, v3, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 786
    :cond_4
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 787
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    aget-object v2, v3, v2

    .line 788
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 787
    invoke-virtual {v1, v2, v3, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_5
    move-object v0, p3

    goto :goto_0

    .line 795
    :cond_6
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 796
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 798
    :cond_7
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 799
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_8
    move-object v0, p3

    .line 806
    :goto_0
    return-object v0
.end method

.method protected definePropertyType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 713
    const/4 v0, 0x0

    .line 715
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 716
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    .line 717
    .local v1, "dynaClass":Lorg/apache/commons/beanutils/DynaClass;
    invoke-interface {v1, p3}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v3

    .line 718
    .local v3, "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    if-nez v3, :cond_0

    .line 719
    return-object v2

    .line 721
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 722
    .end local v1    # "dynaClass":Lorg/apache/commons/beanutils/DynaClass;
    .end local v3    # "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    goto :goto_0

    .line 724
    :cond_1
    const/4 v1, 0x0

    .line 726
    .local v1, "descriptor":Ljava/beans/PropertyDescriptor;
    nop

    .line 727
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 728
    if-nez v1, :cond_2

    .line 729
    return-object v2

    .line 734
    :cond_2
    nop

    .line 735
    instance-of v2, v1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz v2, :cond_3

    .line 736
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 737
    invoke-virtual {v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_3
    instance-of v2, v1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v2, :cond_4

    .line 740
    move-object v2, v1

    check-cast v2, Ljava/beans/IndexedPropertyDescriptor;

    .line 741
    invoke-virtual {v2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 744
    :cond_4
    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    .line 747
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :goto_0
    return-object v0

    .line 732
    .restart local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v3

    .line 733
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    return-object v2
.end method

.method public getApplyLocalized()Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getApplyLocalized()Z

    move-result v0

    return v0
.end method

.method public getDefaultLocale()Ljava/util/Locale;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-object v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getMappedPropertyLocale(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMappedPropertyLocale(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 505
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected invokeSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 880
    if-ltz p4, :cond_0

    .line 881
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    goto :goto_1

    .line 884
    :cond_0
    if-eqz p3, :cond_1

    .line 885
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    nop

    .line 896
    return-void

    .line 893
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    new-instance v1, Ljava/lang/reflect/InvocationTargetException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1
.end method

.method public setApplyLocalized(Z)V
    .locals 1
    .param p1, "newApplyLocalized"    # Z

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setApplyLocalized(Z)V

    .line 176
    return-void
.end method

.method public setDefaultLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    .line 152
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 17
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 639
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    iget-object v0, v7, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  setProperty("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    if-nez v8, :cond_0

    .line 646
    const-string v1, "<NULL>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 648
    :cond_0
    instance-of v1, v8, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 649
    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 651
    :cond_1
    instance-of v1, v8, [Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 652
    move-object v1, v8

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 653
    .local v1, "values":[Ljava/lang/String;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 655
    if-lez v3, :cond_2

    .line 656
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 660
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    .end local v1    # "values":[Ljava/lang/String;
    goto :goto_1

    .line 663
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    iget-object v1, v7, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_2

    .line 639
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v9, p1

    move-object/from16 v2, p2

    .line 670
    :goto_2
    move-object/from16 v0, p1

    .line 671
    .local v0, "target":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v10

    move-object v12, v0

    move-object v11, v2

    .line 672
    .end local v0    # "target":Ljava/lang/Object;
    .end local p2    # "name":Ljava/lang/String;
    .local v10, "resolver":Lorg/apache/commons/beanutils/expression/Resolver;
    .local v11, "name":Ljava/lang/String;
    .local v12, "target":Ljava/lang/Object;
    :goto_3
    invoke-interface {v10, v11}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 674
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-interface {v10, v11}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    .line 675
    invoke-interface {v10, v11}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    .line 678
    goto :goto_3

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return-void

    .line 680
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_6
    iget-object v0, v7, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    iget-object v0, v7, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Target bean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 682
    iget-object v0, v7, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Target name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 686
    :cond_7
    invoke-interface {v10, v11}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "propName":Ljava/lang/String;
    invoke-interface {v10, v11}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v13

    .line 688
    .local v13, "index":I
    invoke-interface {v10, v11}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 690
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v7, v12, v11, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->definePropertyType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 691
    .local v15, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v15, :cond_8

    .line 692
    move-object/from16 v6, p4

    invoke-virtual {v7, v15, v13, v8, v6}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->convert(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 693
    .local v16, "newValue":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v0

    move-object v4, v14

    move v5, v13

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->invokeSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 695
    .end local v16    # "newValue":Ljava/lang/Object;
    :cond_8
    return-void
.end method
