.class public abstract Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static final sApplyMethod:Ljava/lang/reflect/Method;

.field private static final sGetStringSetMethod:Ljava/lang/reflect/Method;

.field private static final sPutStringSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "apply"

    invoke-static {v1, v4, v3}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    .line 2
    const-class v1, Landroid/content/SharedPreferences;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v2

    const-class v5, Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "getStringSet"

    invoke-static {v1, v5, v4}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->sGetStringSetMethod:Ljava/lang/reflect/Method;

    .line 3
    const-class v1, Landroid/content/SharedPreferences$Editor;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v2

    const-class v0, Ljava/util/Set;

    aput-object v0, v3, v6

    const-string v0, "putStringSet"

    invoke-static {v1, v0, v3}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->sPutStringSetMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    .line 2
    :catch_9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->sGetStringSetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, p0, v1}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p2

    :catch_12
    const/4 p2, 0x0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lorg/androidannotations/api/sharedpreferences/SetXmlSerializer;->deserialize(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p0, :cond_11

    .line 1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 2
    :catch_7
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_11
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0
.end method

.method public static putStringSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->sPutStringSetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, p0, v1}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_16

    .line 2
    :catch_f
    invoke-static {p2}, Lorg/androidannotations/api/sharedpreferences/SetXmlSerializer;->serialize(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_16
    return-void
.end method
