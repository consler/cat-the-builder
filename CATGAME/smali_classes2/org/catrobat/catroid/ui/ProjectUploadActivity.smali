.class public Lorg/catrobat/catroid/ui/ProjectUploadActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "ProjectUploadActivity.kt"

# interfaces
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;
.implements Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;
.implements Lorg/catrobat/catroid/transfers/GetTagsTask$TagResponseListener;
.implements Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;
.implements Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUploadActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUploadActivity.kt\norg/catrobat/catroid/ui/ProjectUploadActivity\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 4 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,665:1\n37#2,2:666\n99#3:668\n71#3,22:669\n99#3:691\n71#3,22:692\n99#3:714\n71#3,22:715\n25#4,3:737\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectUploadActivity.kt\norg/catrobat/catroid/ui/ProjectUploadActivity\n*L\n396#1,2:666\n448#1:668\n448#1,22:669\n462#1:691\n462#1,22:692\n465#1:714\n465#1,22:715\n117#1,3:737\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001kB\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u00102\u001a\u000203H\u0002J\u0008\u00104\u001a\u000203H\u0002J\u0008\u00105\u001a\u000203H\u0002J\n\u00106\u001a\u0004\u0018\u00010(H\u0014J\u0008\u00107\u001a\u00020\u0000H\u0016J\u0008\u00108\u001a\u00020.H\u0016J\u0008\u00109\u001a\u000203H\u0002J\u0008\u0010:\u001a\u000203H\u0002J\u0008\u0010;\u001a\u000203H\u0002J\"\u0010<\u001a\u0002032\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020>2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0014J\u0008\u0010B\u001a\u000203H\u0016J\u0012\u0010C\u001a\u0002032\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0014J\u0010\u0010F\u001a\u00020\u00132\u0006\u0010G\u001a\u00020HH\u0016J\u0008\u0010I\u001a\u000203H\u0002J\u0008\u0010J\u001a\u000203H\u0014J\u0010\u0010K\u001a\u0002032\u0006\u0010L\u001a\u00020\u0013H\u0016J\u0008\u0010M\u001a\u000203H\u0002J\u0010\u0010N\u001a\u00020\u00132\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010Q\u001a\u00020\u00132\u0006\u0010G\u001a\u00020HH\u0016J\u001a\u0010R\u001a\u0002032\u0006\u0010?\u001a\u00020>2\u0008\u0010S\u001a\u0004\u0018\u00010EH\u0016J\u0016\u0010T\u001a\u0002032\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000b0*H\u0016J\u0018\u0010U\u001a\u0002032\u0006\u0010V\u001a\u00020\u00132\u0006\u0010W\u001a\u00020\u0013H\u0016J\u0008\u0010X\u001a\u000203H\u0002J\u0010\u0010Y\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000bH\u0002J\u0010\u0010[\u001a\u0002032\u0006\u0010\\\u001a\u00020\u0013H\u0002J\u0010\u0010]\u001a\u0002032\u0006\u0010^\u001a\u00020\u0013H\u0002J\u000e\u0010_\u001a\u0002032\u0006\u0010`\u001a\u00020\u0013J\u0010\u0010a\u001a\u0002032\u0006\u0010b\u001a\u00020>H\u0002J\u0010\u0010c\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000bH\u0002J\u0008\u0010d\u001a\u000203H\u0002J\u0006\u0010e\u001a\u000203J\u0008\u0010f\u001a\u000203H\u0002J\u0006\u0010g\u001a\u000203J\u0012\u0010h\u001a\u0002032\u0008\u0010i\u001a\u0004\u0018\u00010AH\u0016J\u0008\u0010j\u001a\u000203H\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0018R\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008!\u0010\"R\u0014\u0010%\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0018R\u0014\u0010\'\u001a\u0004\u0018\u00010(8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000b0*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006l"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ProjectUploadActivity;",
        "Lorg/catrobat/catroid/ui/BaseActivity;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;",
        "Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;",
        "Lorg/catrobat/catroid/transfers/GetTagsTask$TagResponseListener;",
        "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;",
        "Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;",
        "()V",
        "apiMatcher",
        "Ljava/util/regex/Matcher;",
        "backUpXml",
        "",
        "binding",
        "Lorg/catrobat/catroid/databinding/ActivityUploadBinding;",
        "dialogReplaceApiKeyBinding",
        "Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;",
        "dialogUploadUnchangedProjectBinding",
        "Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;",
        "enableNextButton",
        "",
        "nameInputTextWatcher",
        "Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;",
        "notesAndCredits",
        "getNotesAndCredits",
        "()Ljava/lang/String;",
        "notesAndCreditsScreen",
        "originalProjectName",
        "project",
        "Lorg/catrobat/catroid/content/Project;",
        "projectDescription",
        "getProjectDescription",
        "projectManager",
        "Lorg/catrobat/catroid/ProjectManager;",
        "getProjectManager",
        "()Lorg/catrobat/catroid/ProjectManager;",
        "projectManager$delegate",
        "Lkotlin/Lazy;",
        "projectName",
        "getProjectName",
        "projectUploadController",
        "Lorg/catrobat/catroid/ui/controller/ProjectUploadController;",
        "tags",
        "",
        "uploadProgressDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "uploadResultReceiver",
        "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;",
        "xml",
        "xmlFile",
        "Ljava/io/File;",
        "apiKeyFound",
        "",
        "checkApiPattern",
        "checkCodeForApiKey",
        "createProjectUploadController",
        "getContext",
        "getResultReceiverWrapper",
        "getTags",
        "loadBackup",
        "loadProjectActivity",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onCreateView",
        "onDestroy",
        "onLoadFinished",
        "success",
        "onNextButtonClick",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPrepareOptionsMenu",
        "onReceiveResult",
        "resultData",
        "onTagsReceived",
        "onTokenCheckComplete",
        "tokenValid",
        "connectionFailed",
        "reloadProject",
        "replaceSecret",
        "secret",
        "setNextButtonEnabled",
        "enabled",
        "setScreen",
        "screen",
        "setShowProgressBar",
        "show",
        "setVisibility",
        "visibility",
        "showApiReplacementDialog",
        "showSelectTagsDialog",
        "showUploadDialog",
        "showUploadIsUnchangedDialog",
        "startSignInWorkflow",
        "startUploadService",
        "intent",
        "verifyUserIdentity",
        "NameInputTextWatcher",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private apiMatcher:Ljava/util/regex/Matcher;

.field private backUpXml:Ljava/lang/String;

.field private binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

.field private dialogReplaceApiKeyBinding:Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

.field private dialogUploadUnchangedProjectBinding:Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;

.field private enableNextButton:Z

.field private final nameInputTextWatcher:Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;

.field private notesAndCreditsScreen:Z

.field private originalProjectName:Ljava/lang/String;

.field private project:Lorg/catrobat/catroid/content/Project;

.field private final projectManager$delegate:Lkotlin/Lazy;

.field protected projectUploadController:Lorg/catrobat/catroid/ui/controller/ProjectUploadController;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

.field private final uploadResultReceiver:Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;

.field private xml:Ljava/lang/String;

.field private xmlFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    .line 111
    new-instance v0, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;-><init>(Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadResultReceiver:Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;

    .line 113
    new-instance v0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->nameInputTextWatcher:Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->enableNextButton:Z

    .line 117
    move-object v0, p0

    .line 737
    .local v0, "$this$inject$iv":Landroid/content/ComponentCallbacks;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/koin/core/qualifier/Qualifier;

    .line 738
    .local v2, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 739
    .local v3, "$i$f$inject":I
    sget-object v4, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v5, Lorg/catrobat/catroid/ui/ProjectUploadActivity$$special$$inlined$inject$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$$special$$inlined$inject$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .end local v0    # "$this$inject$iv":Landroid/content/ComponentCallbacks;
    .end local v1    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "$i$f$inject":I
    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->projectManager$delegate:Lkotlin/Lazy;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->tags:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$apiKeyFound(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiKeyFound()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getNotesAndCredits$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getNotesAndCredits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getProject$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/content/Project;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v0, :cond_0

    const-string v1, "project"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getProjectDescription$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getProjectManager$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/ProjectManager;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getProjectName$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$loadBackup(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->loadBackup()V

    return-void
.end method

.method public static final synthetic access$replaceSecret(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;
    .param p1, "secret"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->replaceSecret(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setBinding$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Lorg/catrobat/catroid/databinding/ActivityUploadBinding;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    .line 96
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    return-void
.end method

.method public static final synthetic access$setNextButtonEnabled(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;
    .param p1, "enabled"    # Z

    .line 96
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setNextButtonEnabled(Z)V

    return-void
.end method

.method public static final synthetic access$setProject$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Lorg/catrobat/catroid/content/Project;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Project;

    .line 96
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    return-void
.end method

.method private final apiKeyFound()V
    .locals 3

    .line 318
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiMatcher:Ljava/util/regex/Matcher;

    const-string v1, "apiMatcher"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiMatcher:Ljava/util/regex/Matcher;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiMatcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Objects.requireNonNull(apiMatcher.group(1))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showApiReplacementDialog(Ljava/lang/String;)V

    .line 321
    :cond_3
    return-void
.end method

.method private final checkApiPattern()V
    .locals 4

    .line 309
    const-string v0, "<value>.*?((?=[A-Za-z]+[0-9]|[0-9]+[A-Za-z])[A-Za-z0-9]{24,45})"

    .line 310
    .local v0, "regex":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 311
    .local v1, "apiPattern":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xml:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v3, "xml"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "apiPattern.matcher(xml)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiMatcher:Ljava/util/regex/Matcher;

    .line 312
    const-string v3, "apiMatcher"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiMatcher:Ljava/util/regex/Matcher;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Objects.requireNonNull(apiMatcher.group(1))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showApiReplacementDialog(Ljava/lang/String;)V

    .line 315
    :cond_3
    return-void
.end method

.method private final checkCodeForApiKey()V
    .locals 8

    .line 289
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v1, :cond_0

    const-string v2, "project"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "code.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xmlFile:Ljava/io/File;

    .line 291
    nop

    .line 292
    const-string v1, "xml"

    if-nez v0, :cond_1

    :try_start_0
    const-string v2, "xmlFile"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Files.asCharSource(xmlFile, Charsets.UTF_8).read()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xml:Ljava/lang/String;

    .line 293
    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->backUpXml:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "exception":Ljava/io/IOException;
    invoke-static {}, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    nop

    .line 298
    nop

    .line 303
    nop

    .line 298
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xml:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 299
    nop

    .line 300
    nop

    .line 301
    const-string v0, "WebRequestBrick"

    const-string v1, "BackgroundRequestBrick"

    const-string v3, "LookRequestBrick"

    const-string v4, "OpenUrlBrick"

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 298
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->findAnyOf$default(Ljava/lang/CharSequence;Ljava/util/Collection;IZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 303
    nop

    .local v0, "it":Lkotlin/Pair;
    const/4 v1, 0x0

    .line 304
    .local v1, "$i$a$-let-ProjectUploadActivity$checkCodeForApiKey$1":I
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->checkApiPattern()V

    .line 305
    nop

    .line 303
    .end local v0    # "it":Lkotlin/Pair;
    .end local v1    # "$i$a$-let-ProjectUploadActivity$checkCodeForApiKey$1":I
    :cond_4
    nop

    .line 306
    return-void
.end method

.method private final getNotesAndCredits()Ljava/lang/String;
    .locals 12

    .line 465
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectNotesAndCredits:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.inputProjectNotesAndCredits"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "$this$trim$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 714
    .local v1, "$i$f$trim":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 715
    .local v3, "$i$f$trim":I
    const/4 v4, 0x0

    .line 716
    .local v4, "startIndex$iv$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 717
    .local v5, "endIndex$iv$iv":I
    const/4 v7, 0x0

    .line 719
    .local v7, "startFound$iv$iv":Z
    :goto_1
    if-gt v4, v5, :cond_7

    .line 720
    if-nez v7, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v5

    .line 721
    .local v8, "index$iv$iv":I
    :goto_2
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .local v9, "it":C
    const/4 v10, 0x0

    .line 465
    .local v10, "$i$a$-trim-ProjectUploadActivity$notesAndCredits$1":I
    const/16 v11, 0x20

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .end local v9    # "it":C
    .end local v10    # "$i$a$-trim-ProjectUploadActivity$notesAndCredits$1":I
    :goto_3
    move v9, v11

    .line 723
    .local v9, "match$iv$iv":Z
    if-nez v7, :cond_5

    .line 724
    if-nez v9, :cond_4

    .line 725
    const/4 v7, 0x1

    goto :goto_4

    .line 727
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 729
    :cond_5
    if-nez v9, :cond_6

    .line 730
    goto :goto_5

    .line 732
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 733
    .end local v8    # "index$iv$iv":I
    .end local v9    # "match$iv$iv":Z
    :goto_4
    nop

    .line 719
    goto :goto_1

    .line 736
    :cond_7
    :goto_5
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v2, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 714
    .end local v2    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$trim":I
    .end local v4    # "startIndex$iv$iv":I
    .end local v5    # "endIndex$iv$iv":I
    .end local v7    # "startFound$iv$iv":Z
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .end local v0    # "$this$trim$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trim":I
    return-object v0
.end method

.method private final getProjectDescription()Ljava/lang/String;
    .locals 12

    .line 462
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectDescription:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.inputProjectDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "$this$trim$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 691
    .local v1, "$i$f$trim":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 692
    .local v3, "$i$f$trim":I
    const/4 v4, 0x0

    .line 693
    .local v4, "startIndex$iv$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 694
    .local v5, "endIndex$iv$iv":I
    const/4 v7, 0x0

    .line 696
    .local v7, "startFound$iv$iv":Z
    :goto_1
    if-gt v4, v5, :cond_7

    .line 697
    if-nez v7, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v5

    .line 698
    .local v8, "index$iv$iv":I
    :goto_2
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .local v9, "it":C
    const/4 v10, 0x0

    .line 462
    .local v10, "$i$a$-trim-ProjectUploadActivity$projectDescription$1":I
    const/16 v11, 0x20

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .end local v9    # "it":C
    .end local v10    # "$i$a$-trim-ProjectUploadActivity$projectDescription$1":I
    :goto_3
    move v9, v11

    .line 700
    .local v9, "match$iv$iv":Z
    if-nez v7, :cond_5

    .line 701
    if-nez v9, :cond_4

    .line 702
    const/4 v7, 0x1

    goto :goto_4

    .line 704
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 706
    :cond_5
    if-nez v9, :cond_6

    .line 707
    goto :goto_5

    .line 709
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 710
    .end local v8    # "index$iv$iv":I
    .end local v9    # "match$iv$iv":Z
    :goto_4
    nop

    .line 696
    goto :goto_1

    .line 713
    :cond_7
    :goto_5
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v2, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 691
    .end local v2    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$trim":I
    .end local v4    # "startIndex$iv$iv":I
    .end local v5    # "endIndex$iv$iv":I
    .end local v7    # "startFound$iv$iv":Z
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .end local v0    # "$this$trim$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trim":I
    return-object v0
.end method

.method private final getProjectManager()Lorg/catrobat/catroid/ProjectManager;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->projectManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method private final getProjectName()Ljava/lang/String;
    .locals 12

    .line 448
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.inputProjectName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "$this$trim$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 668
    .local v1, "$i$f$trim":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 669
    .local v3, "$i$f$trim":I
    const/4 v4, 0x0

    .line 670
    .local v4, "startIndex$iv$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 671
    .local v5, "endIndex$iv$iv":I
    const/4 v7, 0x0

    .line 673
    .local v7, "startFound$iv$iv":Z
    :goto_1
    if-gt v4, v5, :cond_7

    .line 674
    if-nez v7, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v5

    .line 675
    .local v8, "index$iv$iv":I
    :goto_2
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .local v9, "it":C
    const/4 v10, 0x0

    .line 448
    .local v10, "$i$a$-trim-ProjectUploadActivity$projectName$name$1":I
    const/16 v11, 0x20

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .end local v9    # "it":C
    .end local v10    # "$i$a$-trim-ProjectUploadActivity$projectName$name$1":I
    :goto_3
    move v9, v11

    .line 677
    .local v9, "match$iv$iv":Z
    if-nez v7, :cond_5

    .line 678
    if-nez v9, :cond_4

    .line 679
    const/4 v7, 0x1

    goto :goto_4

    .line 681
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 683
    :cond_5
    if-nez v9, :cond_6

    .line 684
    goto :goto_5

    .line 686
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 687
    .end local v8    # "index$iv$iv":I
    .end local v9    # "match$iv$iv":Z
    :goto_4
    nop

    .line 673
    goto :goto_1

    .line 690
    :cond_7
    :goto_5
    add-int/lit8 v8, v5, 0x1

    invoke-interface {v2, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 668
    .end local v2    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$trim":I
    .end local v4    # "startIndex$iv$iv":I
    .end local v5    # "endIndex$iv$iv":I
    .end local v7    # "startFound$iv$iv":Z
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .end local v0    # "$this$trim$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trim":I
    nop

    .line 449
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    const-string v2, "project"

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_b

    .line 450
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "project.directory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/catrobat/catroid/io/asynctask/ProjectRenamerKt;->renameProject(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 451
    .local v1, "renamedDirectory":Ljava/io/File;
    if-nez v1, :cond_a

    .line 452
    invoke-static {}, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Creating renamed directory failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v0

    .line 455
    :cond_a
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoaderKt;->loadProject(Ljava/io/File;Landroid/content/Context;)Z

    .line 456
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    const-string v3, "projectManager.currentProject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    .line 458
    .end local v1    # "renamedDirectory":Ljava/io/File;
    :cond_b
    return-object v0
.end method

.method private final getTags()V
    .locals 2

    .line 626
    new-instance v0, Lorg/catrobat/catroid/transfers/GetTagsTask;

    invoke-direct {v0}, Lorg/catrobat/catroid/transfers/GetTagsTask;-><init>()V

    .line 627
    .local v0, "getTagsTask":Lorg/catrobat/catroid/transfers/GetTagsTask;
    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/transfers/GetTagsTask$TagResponseListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/GetTagsTask;->setOnTagsResponseListener(Lorg/catrobat/catroid/transfers/GetTagsTask$TagResponseListener;)V

    .line 628
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/GetTagsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 629
    return-void
.end method

.method private final loadBackup()V
    .locals 12

    .line 346
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    const-string v1, "project"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "currentName":Ljava/lang/String;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->originalProjectName:Ljava/lang/String;

    const-string v3, "originalProjectName"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "backUpXml"

    if-eqz v2, :cond_5

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<programName>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->originalProjectName:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</programName>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "toReplace":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "replaceWith":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v6, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v6, "code.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xmlFile:Ljava/io/File;

    .line 351
    iget-object v6, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->backUpXml:Ljava/lang/String;

    if-nez v6, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->backUpXml:Ljava/lang/String;

    .line 353
    .end local v2    # "toReplace":Ljava/lang/String;
    .end local v3    # "replaceWith":Ljava/lang/String;
    :cond_5
    nop

    .line 354
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xmlFile:Ljava/io/File;

    if-nez v2, :cond_6

    const-string v3, "xmlFile"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 355
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->backUpXml:Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "StandardCharsets.UTF_8"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 355
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :cond_8
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentName":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "currentName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "exception":Ljava/io/IOException;
    invoke-static {}, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_0
    nop

    .line 360
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->reloadProject()V

    .line 361
    return-void
.end method

.method private final loadProjectActivity()V
    .locals 2

    .line 156
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getTags()V

    .line 157
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v1, "projectManager.currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    .line 158
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->createProjectUploadController()Lorg/catrobat/catroid/ui/controller/ProjectUploadController;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->projectUploadController:Lorg/catrobat/catroid/ui/controller/ProjectUploadController;

    .line 159
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->verifyUserIdentity()V

    .line 160
    return-void
.end method

.method private final onCreateView()V
    .locals 8

    .line 163
    const/16 v0, 0x64

    .line 164
    .local v0, "thumbnailSize":I
    new-instance v1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 165
    nop

    .line 166
    nop

    .line 164
    invoke-direct {v1, v0, v0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;-><init>(II)V

    .line 169
    .local v1, "screenshotLoader":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    nop

    .line 170
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    const-string v3, "project"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v2

    const-string v4, "project.directory"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v4, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 172
    nop

    .line 173
    const v5, 0x7f0a0552

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 169
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v6, v5}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->loadAndShowScreenshot(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 176
    nop

    .line 177
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    const-string v4, "binding"

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectSizeView:Landroid/widget/TextView;

    const-string v5, "binding.projectSizeView"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v5, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v5

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    invoke-static {v5, v7}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getSizeAsString(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v5, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2, v5}, Lorg/catrobat/catroid/ProjectManager;->isChangedProject(Lorg/catrobat/catroid/content/Project;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 180
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showUploadIsUnchangedDialog()V

    .line 183
    :cond_5
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v2, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v5, "binding.inputProjectName"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v7, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v7, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_8
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v2, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectDescription:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v7, "binding.inputProjectDescription"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v7, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v7, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Project;->getDescription()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_b
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v2, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectNotesAndCredits:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v7, "binding.inputProjectNotesAndCredits"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v7, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v7, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Project;->getNotesAndCredits()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_e
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v2, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v4, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->nameInputTextWatcher:Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;

    check-cast v4, Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    :cond_10
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v2, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "project.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->originalProjectName:Ljava/lang/String;

    .line 189
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->checkCodeForApiKey()V

    .line 190
    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setShowProgressBar(Z)V

    .line 191
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setNextButtonEnabled(Z)V

    .line 192
    return-void
.end method

.method private final onNextButtonClick()V
    .locals 7

    .line 270
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 271
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "binding.inputProjectName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->nameInputTextWatcher:Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;

    invoke-virtual {v4, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "error":Ljava/lang/String;
    if-eqz v4, :cond_3

    move-object v1, v4

    .local v1, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 275
    .local v5, "$i$a$-let-ProjectUploadActivity$onNextButtonClick$1":I
    iget-object v6, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v6, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v6, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 276
    return-void

    .line 279
    .end local v1    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-ProjectUploadActivity$onNextButtonClick$1":I
    :cond_3
    iget-boolean v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setScreen(Z)V

    .line 280
    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "error":Ljava/lang/String;
    goto :goto_1

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setNextButtonEnabled(Z)V

    .line 283
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setShowProgressBar(Z)V

    .line 284
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showSelectTagsDialog()V

    .line 285
    :goto_1
    nop

    .line 286
    return-void
.end method

.method private final reloadProject()V
    .locals 3

    .line 337
    nop

    .line 338
    :try_start_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v1, :cond_0

    const-string v2, "project"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->loadProject(Ljava/io/File;)V

    .line 339
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getProjectManager()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v1, "projectManager.currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->project:Lorg/catrobat/catroid/content/Project;
    :try_end_0
    .catch Lorg/catrobat/catroid/exceptions/ProjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "exception":Lorg/catrobat/catroid/exceptions/ProjectException;
    invoke-static {}, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "exception":Lorg/catrobat/catroid/exceptions/ProjectException;
    :goto_0
    nop

    .line 343
    return-void
.end method

.method private final replaceSecret(Ljava/lang/String;)V
    .locals 5
    .param p1, "secret"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xml:Ljava/lang/String;

    const-string v1, "xml"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const v3, 0x7f120048

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.api_replacement)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xml:Ljava/lang/String;

    .line 325
    nop

    .line 326
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xmlFile:Ljava/io/File;

    if-nez v2, :cond_1

    const-string v3, "xmlFile"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 327
    .local v0, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->xml:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "StandardCharsets.UTF_8"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 328
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .end local v0    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 327
    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "secret":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .restart local p1    # "secret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "exception":Ljava/io/IOException;
    invoke-static {}, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0    # "exception":Ljava/io/IOException;
    :goto_0
    nop

    .line 332
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->reloadProject()V

    .line 333
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->apiKeyFound()V

    .line 334
    return-void
.end method

.method private final setNextButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 265
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->enableNextButton:Z

    .line 266
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->invalidateOptionsMenu()V

    .line 267
    return-void
.end method

.method private final setScreen(Z)V
    .locals 5
    .param p1, "screen"    # Z

    .line 432
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setVisibility(I)V

    .line 433
    :goto_0
    nop

    .line 434
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    const-string v3, "binding"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectNotesAndCreditsExplanation:Landroid/widget/TextView;

    const-string v4, "binding.projectNotesAndCreditsExplanation"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v2, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectNotesAndCredits:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "binding.inputProjectNotesAndCredits"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 436
    return-void
.end method

.method private final setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 439
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectImageView:Landroid/widget/ImageView;

    const-string v2, "binding.projectImageView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectSize:Landroid/widget/TextView;

    const-string v2, "binding.projectSize"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->projectSizeView:Landroid/widget/TextView;

    const-string v2, "binding.projectSizeView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.inputProjectName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectDescription:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.inputProjectDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 444
    return-void
.end method

.method private final showApiReplacementDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "secret"    # Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    move-result-object v0

    const-string v1, "DialogReplaceApiKeyBinding.inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogReplaceApiKeyBinding:Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    .line 365
    nop

    .line 366
    const-string v1, "dialogReplaceApiKeyBinding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->replaceApiKeyWarning:Landroid/widget/TextView;

    const-string v2, "dialogReplaceApiKeyBinding.replaceApiKeyWarning"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 368
    nop

    .line 369
    const v0, 0x7f12004b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 370
    const-string v4, "<a href=\'https://catrob.at/webbricks\'>https://catrob.at/webbricks</a>"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 368
    invoke-virtual {p0, v0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(\n            R\u2026       WIKI_URL\n        )"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .local v0, "warningURL":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogReplaceApiKeyBinding:Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v3, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->replaceApiKeyWarning:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    nop

    .line 388
    nop

    .line 374
    nop

    .line 387
    nop

    .line 374
    nop

    .line 383
    nop

    .line 374
    nop

    .line 382
    nop

    .line 374
    nop

    .line 377
    nop

    .line 374
    nop

    .line 376
    nop

    .line 374
    nop

    .line 375
    nop

    .line 374
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    const v3, 0x7f1207d1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 376
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogReplaceApiKeyBinding:Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 377
    const v3, 0x7f120049

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showApiReplacementDialog$alertDialog$1;

    invoke-direct {v4, p0, p1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showApiReplacementDialog$alertDialog$1;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/lang/String;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 382
    const v3, 0x7f12004a

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showApiReplacementDialog$alertDialog$2;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showApiReplacementDialog$alertDialog$2;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 383
    const v3, 0x7f1201b8

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showApiReplacementDialog$alertDialog$3;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showApiReplacementDialog$alertDialog$3;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "AlertDialog.Builder(this\u2026se)\n            .create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    nop

    .line 390
    .local v2, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 391
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogReplaceApiKeyBinding:Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v3, Lorg/catrobat/catroid/databinding/DialogReplaceApiKeyBinding;->replaceApiKey:Landroid/widget/TextView;

    const-string v3, "dialogReplaceApiKeyBinding.replaceApiKey"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method

.method private final showSelectTagsDialog()V
    .locals 7

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 396
    .local v0, "checkedTags":Ljava/util/List;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->tags:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 666
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 667
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 396
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 398
    .local v1, "availableTags":[Ljava/lang/String;
    nop

    .line 428
    nop

    .line 398
    nop

    .line 427
    nop

    .line 398
    nop

    .line 422
    nop

    .line 398
    nop

    .line 415
    nop

    .line 398
    nop

    .line 400
    nop

    .line 398
    nop

    .line 399
    nop

    .line 398
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    const v3, 0x7f1207b1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 401
    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    .line 402
    const/4 v5, 0x0

    .line 403
    new-instance v6, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;

    invoke-direct {v6, p0, v0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$1;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/util/List;[Ljava/lang/String;)V

    check-cast v6, Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 400
    invoke-virtual {v2, v3, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 415
    const v3, 0x7f1205b2

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;

    invoke-direct {v5, p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$2;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/util/List;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 422
    const v3, 0x7f1201b8

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showSelectTagsDialog$3;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 429
    return-void

    .line 667
    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v2    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final showUploadIsUnchangedDialog()V
    .locals 6

    .line 195
    nop

    .line 196
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;

    move-result-object v0

    const-string v1, "DialogUploadUnchangedPro\u2026g.inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogUploadUnchangedProjectBinding:Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;

    .line 197
    nop

    .line 198
    const-string v1, "dialogUploadUnchangedProjectBinding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;->unchangedUploadUrl:Landroid/widget/TextView;

    const-string v2, "dialogUploadUnchangedPro\u2026inding.unchangedUploadUrl"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 200
    nop

    .line 201
    const v0, 0x7f1207a5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 202
    const-string v4, "<a href=\'https://catrob.at/ltp\'>https://catrob.at/ltp</a>"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 200
    invoke-virtual {p0, v0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(\n            R\u2026SE_TO_PLAY_URL\n\n        )"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .local v0, "warningURL":Ljava/lang/String;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogUploadUnchangedProjectBinding:Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v3, Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;->unchangedUploadUrl:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    nop

    .line 212
    nop

    .line 207
    nop

    .line 211
    nop

    .line 207
    nop

    .line 210
    nop

    .line 207
    nop

    .line 209
    nop

    .line 207
    nop

    .line 208
    nop

    .line 207
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    const v3, 0x7f1207d1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->dialogUploadUnchangedProjectBinding:Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lorg/catrobat/catroid/databinding/DialogUploadUnchangedProjectBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 210
    const v2, 0x7f1205ff

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showUploadIsUnchangedDialog$alertDialog$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showUploadIsUnchangedDialog$alertDialog$1;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(this\u2026se)\n            .create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    nop

    .line 214
    .local v1, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 215
    return-void
.end method


# virtual methods
.method protected createProjectUploadController()Lorg/catrobat/catroid/ui/controller/ProjectUploadController;
    .locals 2

    .line 143
    new-instance v0, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/controller/ProjectUploadController;-><init>(Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;)V

    return-object v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getContext()Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getContext()Lorg/catrobat/catroid/ui/ProjectUploadActivity;
    .locals 0

    .line 494
    return-object p0
.end method

.method public getResultReceiverWrapper()Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadResultReceiver:Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 614
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    .line 615
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 616
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->onCreateView()V

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->finish()V

    .line 619
    goto :goto_0

    .line 621
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 622
    :goto_0
    nop

    .line 623
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setScreen(Z)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->loadBackup()V

    .line 240
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onBackPressed()V

    .line 241
    :goto_0
    nop

    .line 242
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    move-result-object v0

    const-string v1, "ActivityUploadBinding.inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    .line 130
    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .local v0, "view":Landroid/widget/LinearLayout;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setContentView(Landroid/view/View;)V

    .line 133
    const v1, 0x7f0a0617

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 134
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f1207b0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 136
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    .line 137
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setShowProgressBar(Z)V

    .line 139
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->loadProjectActivity()V

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 221
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onDestroy()V

    .line 222
    return-void
.end method

.method public onLoadFinished(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->loadProjectActivity()V

    goto :goto_0

    .line 149
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1202ea

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setShowProgressBar(Z)V

    .line 151
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->finish()V

    .line 152
    :goto_0
    nop

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0487

    if-eq v0, v1, :cond_0

    .line 254
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 246
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->onNextButtonClick()V

    .line 255
    nop

    .line 256
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_1
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    if-eqz v0, :cond_2

    .line 249
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->setScreen(Z)V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->notesAndCreditsScreen:Z

    .line 252
    :cond_2
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    const v0, 0x7f0a0487

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.next)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->enableNextButton:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 503
    const v0, 0x7f0a0365

    const/16 v1, 0x8

    const v2, 0x7f0a0366

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne p1, v3, :cond_9

    if-eqz p2, :cond_9

    iget-object v6, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 515
    :cond_0
    const-string v6, "projectId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "projectId":Ljava/lang/String;
    iget-object v7, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v7, :cond_1

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v4

    .line 518
    .local v7, "positiveButton":Landroid/widget/Button;
    :goto_0
    if-eqz v7, :cond_2

    new-instance v8, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;

    invoke-direct {v8, p0, v6}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$1;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    :cond_3
    nop

    .line 530
    iget-object v8, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v8, :cond_4

    .line 529
    invoke-virtual {v8, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    nop

    .line 532
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_2

    :cond_5
    move-object v0, v4

    .line 533
    .local v0, "image":Landroid/widget/ImageView;
    :goto_2
    if-eqz v0, :cond_6

    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    :cond_7
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 537
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "number_of_uploaded_projects"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v8, v3

    .line 538
    .local v8, "numberOfUploadedProjects":I
    nop

    .line 540
    nop

    .line 538
    nop

    .line 539
    nop

    .line 538
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 539
    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 540
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    const/4 v2, 0x2

    if-eq v8, v2, :cond_8

    .line 543
    return-void

    .line 546
    :cond_8
    nop

    .line 575
    nop

    .line 546
    nop

    .line 574
    nop

    .line 546
    nop

    .line 573
    nop

    .line 546
    nop

    .line 567
    nop

    .line 546
    nop

    .line 549
    nop

    .line 546
    nop

    .line 548
    nop

    .line 546
    nop

    .line 547
    nop

    .line 546
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    const v3, 0x7f1206f6

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 548
    const v3, 0x7f0d0148

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 549
    const v3, 0x7f1206f5

    new-instance v9, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$2;

    invoke-direct {v9, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$2;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v9, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 567
    const v3, 0x7f1206f3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v9, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$3;

    invoke-direct {v9, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$onReceiveResult$3;-><init>(Landroid/content/SharedPreferences;)V

    check-cast v9, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 573
    const v3, 0x7f1206f4

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 574
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 575
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 576
    return-void

    .line 504
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "projectId":Ljava/lang/String;
    .end local v7    # "positiveButton":Landroid/widget/Button;
    .end local v8    # "numberOfUploadedProjects":I
    :cond_9
    :goto_3
    nop

    .line 505
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v3, :cond_a

    .line 504
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_a
    nop

    .line 506
    :goto_4
    nop

    .line 507
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_b

    .line 506
    const v2, 0x7f0a0363

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    nop

    .line 508
    :goto_5
    nop

    .line 509
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 508
    :cond_c
    move-object v0, v4

    .line 510
    .restart local v0    # "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_d

    const v1, 0x7f080262

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    :cond_e
    return-void
.end method

.method public onTagsReceived(Ljava/util/List;)V
    .locals 1
    .param p1, "tags"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->tags:Ljava/util/List;

    .line 633
    return-void
.end method

.method public onTokenCheckComplete(ZZ)V
    .locals 2
    .param p1, "tokenValid"    # Z
    .param p2, "connectionFailed"    # Z

    .line 593
    if-eqz p2, :cond_1

    .line 594
    if-nez p1, :cond_0

    .line 595
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f12030b

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 596
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/catrobat/catroid/utils/Utils;->logoutUser(Landroid/content/Context;)V

    .line 597
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->startSignInWorkflow()V

    goto :goto_0

    .line 599
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1202e5

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 600
    return-void

    .line 602
    :cond_1
    if-nez p1, :cond_2

    .line 603
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->startSignInWorkflow()V

    .line 604
    return-void

    .line 605
    :cond_2
    :goto_0
    nop

    .line 606
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->onCreateView()V

    .line 607
    return-void
.end method

.method public final setShowProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 260
    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.progress_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->binding:Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    if-nez v0, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->uploadLayout:Landroid/widget/LinearLayout;

    const-string v3, "binding.uploadLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public final showUploadDialog()V
    .locals 3

    .line 468
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    const-string v1, "MainMenuActivity.surveyCampaign"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/common/Survey;->setUploadFlag(Z)V

    .line 472
    :cond_0
    nop

    .line 487
    nop

    .line 472
    nop

    .line 486
    nop

    .line 472
    nop

    .line 479
    nop

    .line 472
    nop

    .line 475
    nop

    .line 472
    nop

    .line 474
    nop

    .line 472
    nop

    .line 473
    nop

    .line 472
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 473
    const v1, 0x7f1207b0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 474
    const v1, 0x7f0d0153

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 475
    const v1, 0x7f1206e3

    new-instance v2, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showUploadDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showUploadDialog$1;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    const v1, 0x7f120294

    new-instance v2, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showUploadDialog$2;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$showUploadDialog$2;-><init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 486
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    .line 488
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 489
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->uploadProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    :cond_2
    return-void
.end method

.method public final startSignInWorkflow()V
    .locals 3

    .line 610
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    return-void
.end method

.method public startUploadService(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 497
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->showUploadDialog()V

    .line 498
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 499
    return-void
.end method

.method protected verifyUserIdentity()V
    .locals 8

    .line 579
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 580
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "token"

    const-string v2, "no_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "token":Ljava/lang/String;
    const-string v3, "username"

    const-string v4, "no_username"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, "username":Ljava/lang/String;
    nop

    .line 583
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x20

    if-ne v2, v6, :cond_0

    const-string v2, "-1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 582
    :goto_0
    nop

    .line 584
    .local v2, "isTokenSetInPreferences":Z
    if-eqz v2, :cond_1

    .line 585
    nop

    .line 586
    nop

    .line 585
    new-instance v6, Lorg/catrobat/catroid/transfers/CheckTokenTask;

    move-object v7, p0

    check-cast v7, Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/transfers/CheckTokenTask;-><init>(Lorg/catrobat/catroid/transfers/CheckTokenTask$TokenCheckListener;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 586
    aput-object v1, v7, v5

    aput-object v3, v7, v4

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/transfers/CheckTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 588
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->startSignInWorkflow()V

    .line 589
    :goto_1
    nop

    .line 590
    return-void
.end method
