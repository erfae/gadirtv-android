.class public Lorg/androidannotations/api/roboguice/RoboGuiceHelper;
.super Ljava/lang/Object;
.source "RoboGuiceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callInjectViews(Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    const-string v0, "roboguice.inject.ViewListener$ViewMembersInjector"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "injectViews"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lorg/androidannotations/api/roboguice/RoboGuiceHelper;->propagateRuntimeException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    invoke-static {p0}, Lorg/androidannotations/api/roboguice/RoboGuiceHelper;->propagateRuntimeException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/androidannotations/api/roboguice/RoboGuiceHelper;->propagateRuntimeException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 8
    invoke-static {p0}, Lorg/androidannotations/api/roboguice/RoboGuiceHelper;->propagateRuntimeException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 9
    invoke-static {p0}, Lorg/androidannotations/api/roboguice/RoboGuiceHelper;->propagateRuntimeException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 10
    invoke-static {p0}, Lorg/androidannotations/api/roboguice/RoboGuiceHelper;->propagateRuntimeException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static propagateRuntimeException(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not invoke RoboGuice method!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
