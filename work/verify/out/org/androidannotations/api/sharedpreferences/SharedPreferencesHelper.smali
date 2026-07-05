.class public abstract Lorg/androidannotations/api/sharedpreferences/SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "SharedPreferencesHelper.java"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method
