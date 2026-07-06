.class public final Lorg/androidannotations/api/sharedpreferences/BooleanPrefField;
.super Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;
.source "BooleanPrefField.java"


# instance fields
.field private final defaultValue:Z


# virtual methods
.method public get()Z
    .locals 1

    iget-boolean v0, p0, Lorg/androidannotations/api/sharedpreferences/BooleanPrefField;->defaultValue:Z

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/BooleanPrefField;->getOr(Z)Z

    move-result v0

    return v0
.end method

.method public getOr(Z)Z
    .locals 2

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public put(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
