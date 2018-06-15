.class Lichunqiu/get1t/crack1t/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lichunqiu/get1t/crack1t/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lichunqiu/get1t/crack1t/MainActivity;


# direct methods
.method constructor <init>(Lichunqiu/get1t/crack1t/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lichunqiu/get1t/crack1t/MainActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lichunqiu/get1t/crack1t/MainActivity$1;->this$0:Lichunqiu/get1t/crack1t/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v3, p0, Lichunqiu/get1t/crack1t/MainActivity$1;->this$0:Lichunqiu/get1t/crack1t/MainActivity;

    iget-object v3, v3, Lichunqiu/get1t/crack1t/MainActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "Key":Ljava/lang/String;
    new-instance v1, Lichunqiu/get1t/crack1t/check;

    invoke-direct {v1}, Lichunqiu/get1t/crack1t/check;-><init>()V

    .line 35
    .local v1, "c":Lichunqiu/get1t/crack1t/check;
    invoke-virtual {v1, v0}, Lichunqiu/get1t/crack1t/check;->mainCheck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, p0, Lichunqiu/get1t/crack1t/MainActivity$1;->this$0:Lichunqiu/get1t/crack1t/MainActivity;

    invoke-virtual {v3}, Lichunqiu/get1t/crack1t/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lichunqiu/get1t/crack1t/MainActivity$1;->this$0:Lichunqiu/get1t/crack1t/MainActivity;

    invoke-virtual {v4}, Lichunqiu/get1t/crack1t/MainActivity;->stringFromJNI()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 37
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 39
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
