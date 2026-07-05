.class public final Lorg/androidannotations/api/sharedpreferences/IntPrefField;
.super Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;
.source "IntPrefField.java"


# instance fields
.field private final defaultValue:I


# virtual methods
.method public get()I
    .locals 1

    iget v0, p0, Lorg/androidannotations/api/sharedpreferences/IntPrefField;->defaultValue:I

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/IntPrefField;->getOr(I)I

    move-result v0

    return v0
.end method

.method public getOr(I)I
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 4
    :catch_1
    throw v0
.end method

.method public put(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/AbstractPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
