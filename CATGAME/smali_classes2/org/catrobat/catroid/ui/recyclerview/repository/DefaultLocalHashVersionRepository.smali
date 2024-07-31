.class public final Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;
.super Ljava/lang/Object;
.source "LocalHashVersionRepository.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "encryptedPref",
        "Landroid/content/SharedPreferences;",
        "getEncryptedPref",
        "()Landroid/content/SharedPreferences;",
        "encryptedPref$delegate",
        "Lkotlin/Lazy;",
        "getFeaturedProjectsHashVersion",
        "",
        "getProjectsCategoriesHashVersion",
        "reset",
        "",
        "setFeaturedProjectsHashVersion",
        "hashVersion",
        "setProjectsCategoriesHashVersion",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$Companion;

.field private static final FEATURED_PROJECTS_HASH_VERSION:Ljava/lang/String; = "featured_projects_hash_version"

.field private static final PROJECT_CATEGORIES_HASH_VERSION:Ljava/lang/String; = "project_categories_hash_version"


# instance fields
.field private final encryptedPref$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->Companion:Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$encryptedPref$2;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository$encryptedPref$2;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->encryptedPref$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getEncryptedPref()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->encryptedPref$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getFeaturedProjectsHashVersion()Ljava/lang/String;
    .locals 3

    .line 61
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->getEncryptedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "featured_projects_hash_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjectsCategoriesHashVersion()Ljava/lang/String;
    .locals 3

    .line 71
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->getEncryptedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "project_categories_hash_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->getEncryptedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$with":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$a$-with-DefaultLocalHashVersionRepository$reset$1":I
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    nop

    .line 81
    .end local v0    # "$this$with":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-with-DefaultLocalHashVersionRepository$reset$1":I
    nop

    .line 85
    return-void
.end method

.method public setFeaturedProjectsHashVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "hashVersion"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->getEncryptedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$with":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-with-DefaultLocalHashVersionRepository$setFeaturedProjectsHashVersion$1":I
    const-string v2, "featured_projects_hash_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    nop

    .line 64
    .end local v0    # "$this$with":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-with-DefaultLocalHashVersionRepository$setFeaturedProjectsHashVersion$1":I
    nop

    .line 68
    return-void
.end method

.method public setProjectsCategoriesHashVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "hashVersion"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultLocalHashVersionRepository;->getEncryptedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "$this$with":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 75
    .local v1, "$i$a$-with-DefaultLocalHashVersionRepository$setProjectsCategoriesHashVersion$1":I
    const-string v2, "project_categories_hash_version"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    nop

    .line 74
    .end local v0    # "$this$with":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "$i$a$-with-DefaultLocalHashVersionRepository$setProjectsCategoriesHashVersion$1":I
    nop

    .line 78
    return-void
.end method
