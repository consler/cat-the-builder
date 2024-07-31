.class public abstract Lorg/catrobat/catroid/ui/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u000bH\u0004J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0012\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u000bH\u0014J+\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0006\u0010\'\u001a\u00020(H\u0016\u00a2\u0006\u0002\u0010)J\u0008\u0010*\u001a\u00020\u000bH\u0014R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/BaseActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lorg/catrobat/catroid/ui/runtimepermissions/PermissionHandlingActivity;",
        "()V",
        "isRecoveringFromCrash",
        "",
        "()Z",
        "permissionRequestActivityExtension",
        "Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;",
        "savedInstanceStateExpected",
        "addToRequiresPermissionTaskList",
        "",
        "task",
        "Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;",
        "applyAccessibilityStyles",
        "checkActiveProcess",
        "processInfo",
        "Landroid/app/ActivityManager$RunningAppProcessInfo;",
        "context",
        "Landroid/content/Context;",
        "checkIfCrashRecoveryAndFinishActivity",
        "activity",
        "Landroid/app/Activity;",
        "checkIfProcessRecreatedAndFinishActivity",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "googleAnalyticsTrackScreenResume",
        "isApplicationSentToBackground",
        "onCreate",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPause",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
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
.field private final permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

.field private savedInstanceStateExpected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 51
    new-instance v0, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/BaseActivity;->permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    return-void
.end method

.method private final applyAccessibilityStyles()V
    .locals 3

    .line 82
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->fromCurrentPreferences(Landroid/content/SharedPreferences;)Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;

    move-result-object v1

    .line 84
    .local v1, "profile":Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilityProfile;->applyAccessibilityStyles(Landroid/content/res/Resources$Theme;)V

    .line 85
    return-void
.end method

.method private final checkActiveProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/content/Context;)Z
    .locals 6
    .param p1, "processInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 176
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 177
    .local v4, "activeProcess":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    return v2

    .line 176
    :cond_0
    nop

    .end local v4    # "activeProcess":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final checkIfCrashRecoveryAndFinishActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 115
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->isRecoveringFromCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    instance-of v0, p1, Lorg/catrobat/catroid/ui/MainMenuActivity;

    if-eqz v0, :cond_0

    .line 117
    nop

    .line 119
    nop

    .line 117
    nop

    .line 118
    nop

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    const-string v2, "RECOVERED_FROM_CRASH"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 122
    :cond_1
    :goto_0
    nop

    .line 124
    return-void
.end method

.method private final checkIfProcessRecreatedAndFinishActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/BaseActivity;->savedInstanceStateExpected:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "activityName":Ljava/lang/String;
    nop

    .line 74
    nop

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support recovery from process recreation, finishing activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->finish()V

    goto :goto_1

    .line 70
    .end local v0    # "activityName":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/BaseActivity;->savedInstanceStateExpected:Z

    .line 78
    :goto_1
    nop

    .line 79
    return-void
.end method

.method private final isApplicationSentToBackground(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/app/ActivityManager;

    .line 158
    .local v0, "activityManager":Landroid/app/ActivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 159
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "tasks":Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 161
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    return v2

    .line 165
    .end local v1    # "tasks":Ljava/util/List;
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 166
    .local v1, "runningProcesses":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 167
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 168
    const-string v2, "processInfo"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->checkActiveProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/content/Context;)Z

    move-result v2

    return v2

    .line 166
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_1

    .line 171
    .end local v1    # "runningProcesses":Ljava/util/List;
    :cond_3
    nop

    .line 172
    return v3

    .line 156
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isRecoveringFromCrash()Z
    .locals 3

    .line 127
    nop

    .line 128
    nop

    .line 127
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    const-string v1, "RECOVERED_FROM_CRASH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V
    .locals 1
    .param p1, "task"    # Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/catrobat/catroid/ui/BaseActivity;->permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->addToRequiresPermissionTaskList(Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;)V

    .line 132
    return-void
.end method

.method protected final googleAnalyticsTrackScreenResume()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/catrobat/catroid/CatroidApplication;

    invoke-virtual {v0}, Lorg/catrobat/catroid/CatroidApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 102
    .local v0, "googleTracker":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 104
    return-void

    .line 101
    .end local v0    # "googleTracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.catroid.CatroidApplication"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->applyAccessibilityStyles()V

    .line 59
    new-instance v0, Lorg/catrobat/catroid/ui/BaseExceptionHandler;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/BaseExceptionHandler;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 60
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/BaseActivity;->checkIfCrashRecoveryAndFinishActivity(Landroid/app/Activity;)V

    .line 61
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->checkIfProcessRecreatedAndFinishActivity(Landroid/os/Bundle;)V

    .line 63
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isCastSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->initializeCast(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onBackPressed()V

    .line 110
    nop

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 3

    .line 148
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 149
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/os/PowerManager;

    .line 150
    .local v0, "pm":Landroid/os/PowerManager;
    sget-object v1, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/BaseActivity;->isApplicationSentToBackground(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/common/Survey;->endAppTime(Landroid/content/Context;)V

    .line 153
    :cond_1
    return-void

    .line 149
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/ui/BaseActivity;->permissionRequestActivityExtension:Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;

    .line 140
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 139
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/catrobat/catroid/ui/runtimepermissions/PermissionRequestActivityExtension;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 89
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 90
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isCastSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/cast/CastManager;->initializeCast(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->invalidateOptionsMenu()V

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->googleAnalyticsTrackScreenResume()V

    .line 97
    sget-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/common/Survey;->startAppTime(Landroid/content/Context;)V

    .line 98
    :cond_1
    return-void
.end method
