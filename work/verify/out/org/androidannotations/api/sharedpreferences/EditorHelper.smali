.class public abstract Lorg/androidannotations/api/sharedpreferences/EditorHelper;
.super Ljava/lang/Object;
.source "EditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/androidannotations/api/sharedpreferences/EditorHelper<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private cast()Lorg/androidannotations/api/sharedpreferences/EditorHelper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final apply()V
    .registers 2

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/androidannotations/api/sharedpreferences/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public final clear()Lorg/androidannotations/api/sharedpreferences/EditorHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2
    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->cast()Lorg/androidannotations/api/sharedpreferences/EditorHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/EditorHelper;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method
